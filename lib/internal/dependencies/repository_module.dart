import 'package:clean_architecture/data/repository/day_data_repository.dart';
import 'package:clean_architecture/domain/repository/day_repository.dart';

import 'api_module.dart';

class RepositoryModule {
  static DayRepository? _dayRepository;

  static DayRepository dayRepository() {
    return _dayRepository = _dayRepository
        ?? DayDataRepository(ApiModule.apiUtil());

  }
  //   if (_dayRepository == null) {
  //     _dayRepository = DayDataRepository(
  //       ApiModule.apiUtil(),
  //     );
  //   }
  //   return _dayRepository;
  // }
}