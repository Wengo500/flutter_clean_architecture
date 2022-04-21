import 'package:clean_architecture/domain/model/day.dart';

abstract class HomeState {
  @override
  get day => null;
}
class HomeStateLoadingState extends HomeState {}

class GetDayState extends HomeState {
  @override
  Day? day;

  GetDayState({required this.day});
  List<Day?> get props => [day];
}