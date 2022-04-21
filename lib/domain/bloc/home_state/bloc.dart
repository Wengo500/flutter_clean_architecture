import 'package:clean_architecture/domain/model/day.dart';
import 'package:clean_architecture/domain/repository/day_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'event.dart';
import 'state.dart';

class HomeStateBloc extends Bloc <HomeEvent, HomeState> {
  final DayRepository _dayRepository;

  Future<Day> getDay({
    @required double? latitude,
    @required double? longitude,
  }) async {
    return (latitude != null && longitude != null)
        ? await _dayRepository.getDay(latitude: latitude, longitude: longitude)
        : Day();
  }
  HomeStateBloc(this._dayRepository) : super(GetDayState(day: null)){
    on<GetDayEvent>((event, emit) {
      emit(HomeStateLoadingState());
      emit(GetDayState(
        day: event.day,
      ));
    }
    );
  }
}