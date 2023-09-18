part of 'profive_bloc.dart';

@immutable
sealed class ProfiveState {}

final class ProfiveInitial extends ProfiveState {
  String? name;
  ProfiveInitial({this.name}) : super();
}
