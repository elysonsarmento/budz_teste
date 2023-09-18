part of 'profive_bloc.dart';

@immutable
sealed class ProfiveEvent {}

final class ProfiveFetchUser extends ProfiveEvent {
  ProfiveFetchUser() : super();
}
