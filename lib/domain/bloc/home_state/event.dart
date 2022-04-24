part of 'bloc.dart';

@freezed
class GetDayEvent with _$GetDayEvent {
  const factory GetDayEvent.fetch({
   required double latitude,
   required double longitude,
  }) = GetDayEventFetch;
}