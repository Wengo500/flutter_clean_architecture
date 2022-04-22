
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_day.freezed.dart';
part 'api_day.g.dart';

@freezed
class ApiDay with _$ApiDay {
  const factory ApiDay({
    required String sunrise,
    required String sunset,
    required String solar_noon,
    required num day_length,
  }) = _Charcter;
  factory ApiDay.fromJson(Map<String, dynamic> json) =>  _$ApiDayFromJson(json['results']);
}