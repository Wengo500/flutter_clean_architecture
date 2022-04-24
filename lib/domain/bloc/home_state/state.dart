part of 'bloc.dart';

@freezed
class GetDayState with _$GetDayState {
  const factory GetDayState.initial() = Initial;
  const factory GetDayState.loading() = Loading;
  const factory GetDayState.loaded({day}) = Loaded;
}