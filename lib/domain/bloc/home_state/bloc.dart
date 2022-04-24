import 'package:clean_architecture/domain/model/day.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clean_architecture/domain/repository/day_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class HomeStateBloc extends Bloc <GetDayEvent, GetDayState> {
  final DayRepository _dayRepository;

  Future<Day> getDay({
    @required double? latitude,
    @required double? longitude,
  }) async {
    return (latitude != null && longitude != null)
        ? await _dayRepository.getDay(latitude: latitude, longitude: longitude)
        : Day();
  }
  HomeStateBloc(this._dayRepository) : super(const GetDayState.initial()){
    on<GetDayEventFetch>((event, emit) async {
      emit(const GetDayState.loading());
        Day _dayLoaded = await getDay(latitude: event.latitude, longitude: event.longitude);
        emit(GetDayState.loaded(
            day: _dayLoaded
        ));
    }
    );
  }
}