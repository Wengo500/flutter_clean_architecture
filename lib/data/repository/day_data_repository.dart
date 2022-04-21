import 'package:clean_architecture/data/api/api_util.dart';
import 'package:clean_architecture/domain/model/day.dart';
import 'package:clean_architecture/domain/repository/day_repository.dart';

class DayDataRepository extends DayRepository {
  final ApiUtil _apiUtil;

  DayDataRepository(this._apiUtil);
  @override
  Future<Day> getDay({double? latitude, double? longitude}) async {
    return _apiUtil.getDay(latitude: latitude, longitude: longitude);
  }
}