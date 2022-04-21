import 'package:clean_architecture/domain/model/day.dart';

abstract class HomeEvent {
  @override
  List<Object> get props => [];
}

class GetDayEvent extends HomeEvent {
  final Day? day;
  GetDayEvent({required this.day});
}