import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entity/user_entity.dart';
import '../../../domain/usecase/user_usecase.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final UserUseCase _userUseCase;
  EditProfileBloc(this._userUseCase) : super(EditProfileLoading()) {
    on<EditProfileEvent>((event, emit) {});

    on<ProfileFetchUser>((event, emit) async {
      emit(EditProfileLoading());
      await _userUseCase.getUser("").then((value) {
        emit(EditProfileSuccess(userEntity: value));
      });
    });
  }
}
