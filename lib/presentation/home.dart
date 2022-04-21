import 'package:clean_architecture/domain/bloc/home_state/state.dart';
import 'package:clean_architecture/domain/model/day.dart';
import 'package:clean_architecture/internal/dependencies/home_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/bloc/home_state/bloc.dart';
import '../domain/bloc/home_state/event.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _latController = TextEditingController();
  final _lngController = TextEditingController();

  HomeStateBloc? _homeState;

  @override
  void initState() {
    super.initState();
    _homeState = HomeModule.homeState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _getRowInput(),
            const SizedBox(height: 20),
            RaisedButton(
              child: const Text('Получить'),
              onPressed: _getDay,
            ),
            const SizedBox(height: 20),
            _getDayInfo(),
          ],
        ),
      ),
    );
  }

  Widget _getRowInput() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _latController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
            decoration: const InputDecoration(hintText: 'Широта'),
          ),
        ),
         const SizedBox(width: 20),
        Expanded(
          child: TextField(
            controller: _lngController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
            decoration: const InputDecoration(hintText: 'Долгота'),
          ),
        ),
      ],
    );
  }

  Widget _getDayInfo() {
    final state = context.watch<HomeStateBloc>().state;
    if (state.day == null) return const Text('Nothing');
    if (state is HomeStateLoadingState) return const CircularProgressIndicator();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Восход: ${state.day?.solarNoon.toLocal()}'),
        Text('Заход: ${state.day?.sunset.toLocal()}'),
        Text('Полдень: ${state.day?.solarNoon!.toLocal()}'),
        Text('Продолжительность: ${Duration(seconds: state.day?.dayLength as int)}'),
      ],
    );
  }

  void _getDay() async {
    final HomeStateBloc updateCoordinate = context.read<HomeStateBloc>();
    final lat = double.tryParse(_latController.text);
    final lng = double.tryParse(_lngController.text);
    final Day getDay = await _homeState!.getDay(latitude: lat, longitude: lng);
    updateCoordinate.add(GetDayEvent(day: getDay));
  }
}