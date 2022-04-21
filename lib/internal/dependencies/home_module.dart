import 'package:clean_architecture/domain/bloc/home_state/bloc.dart';
import 'package:clean_architecture/internal/dependencies/repository_module.dart';

class HomeModule {
  static HomeStateBloc homeState() {
    return HomeStateBloc(
      RepositoryModule.dayRepository(),
    );
  }
}