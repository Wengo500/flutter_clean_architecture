import 'package:clean_architecture/domain/state/home_state.dart';
import 'package:clean_architecture/internal/dependencies/repository_module.dart';

class HomeModule {
  static HomeState homeState() {
    return HomeState(
      RepositoryModule.dayRepository(),
    );
  }
}