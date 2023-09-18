part of 'edit_profile_bloc.dart';

@immutable
sealed class EditProfileState {}

final class EditProfileLoading extends EditProfileState {}

final class EditProfileSuccess extends EditProfileState {
  final UserEntity userEntity;

  EditProfileSuccess({required this.userEntity}) : super();
}
