import 'package:bloc/bloc.dart';
import 'package:budz_teste/domain/usecase/user_usecase.dart';
import 'package:meta/meta.dart';

import '../../../domain/entity/user_entity.dart';

part 'profive_event.dart';
part 'profive_state.dart';

class ProfiveBloc extends Bloc<ProfiveEvent, ProfiveState> {
  final UserUseCase _userUseCase;
  ProfiveBloc(this._userUseCase) : super(ProfiveLoadingState()) {
    on<ProfiveEvent>((event, emit) {});

    on<ProfiveFetchUser>((event, emit) async {
      emit(ProfiveLoadingState());
      await _userUseCase.getUser("").then((value) {
        emit(ProfiveSuccessState(userEntity: value));
      });
    });
  }
}
