part of 'profive_bloc.dart';

@immutable
sealed class ProfiveState {}

final class ProfiveLoadingState extends ProfiveState {
  ProfiveLoadingState() : super();
}

final class ProfiveSuccessState extends ProfiveState {
  final UserEntity userEntity;
  ProfiveSuccessState({required this.userEntity}) : super();
}
