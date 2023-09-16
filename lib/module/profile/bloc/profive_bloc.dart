import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profive_event.dart';
part 'profive_state.dart';

class ProfiveBloc extends Bloc<ProfiveEvent, ProfiveState> {
  ProfiveBloc() : super(ProfiveInitial()) {
    on<ProfiveEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
