import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/profive_bloc.dart';
import 'page/sucess_profile_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfiveBloc, ProfiveState>(
      builder: (context, state) {
        switch (state.runtimeType) {
          case ProfiveSuccessState:
            state as ProfiveSuccessState;
            return SucessProfileView(
              state: state,
            );
          default:
            return Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }
}
