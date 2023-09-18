import 'package:budz_teste/widgets/text_field_with_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/user_usecase.dart';
import '../bloc/edit_profile_bloc.dart';
import 'page/delete_dialog.dart';
import 'page/image_select.dart';

class ProfileEditView extends StatelessWidget {
  const ProfileEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: const Color(0xff171D1F),
            shadowColor: Colors.transparent,
            bottomOpacity: 0.0,
            titleTextStyle: const TextStyle(
              color: Color(0xff171D1F),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            elevation: 0,
            title: const Text("Editar Perfil"),
          ),
          backgroundColor: Colors.white,
          body: BlocBuilder<EditProfileBloc, EditProfileState>(
            builder: (context, state) {
              switch (state.runtimeType) {
                case EditProfileLoading:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );

                case EditProfileSuccess:
                  state as EditProfileSuccess;
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () async {
                              await onImageSelect(context);
                            },
                            child: const Text(
                              "Alterar Foto",
                              style: TextStyle(
                                color: Color(0xff2371EE),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWithTitle(
                            title: "Nome",
                            initialValue: state.userEntity.fullname,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWithTitle(
                            title: "Email",
                            initialValue: state.userEntity.email,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const TextFieldWithTitle(
                            title: "Gênero",
                            labelText: "Selecione uma opção",
                            enabled: false,
                            suffixIcon: Icon(Icons.arrow_drop_down),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //save
                          MaterialButton(
                              height: 50,
                              shape: ShapeBorder.lerp(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                1,
                              ),
                              minWidth: double.infinity,
                              color: const Color(0xff2371EE),
                              onPressed: () {},
                              child: Text(
                                "Salvar".toUpperCase(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )),

                          TextButton(
                              onPressed: () async {
                                await onDeleteSelect(context);
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: const Color(0xff171D1F),
                              ),
                              child: const Text("Excluir Conta",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  )))
                        ],
                      ),
                    ),
                  );
                default:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
              }
            },
          )),
    );
  }

  Future<dynamic> onImageSelect(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        builder: (BuildContext context) {
          return const DialogImageSelect();
        });
  }

  Future<dynamic> onDeleteSelect(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        builder: (BuildContext context) {
          return const DeleteDialog();
        });
  }
}
