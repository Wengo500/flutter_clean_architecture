import 'package:clean_architecture/data/api/api_util.dart';
import 'package:clean_architecture/data/api/service/sunrise_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil apiUtil() {
    // if (_apiUtil == null) {
     return _apiUtil = _apiUtil ?? ApiUtil(SunriseService());
    // }
    // return _apiUtil;
  }
}