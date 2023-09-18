import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../widgets/buttons/button_with_two_icons.dart';
import '../../../../widgets/icons/icons_string.dart';
import '../../bloc/profive_bloc.dart';

class SucessProfileView extends StatelessWidget {
  final ProfiveInitial state;
  const SucessProfileView({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              constraints: const BoxConstraints.expand(height: 100),
              color: const Color(0xFFFFFFFF),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color(0xFF171D1F)),
                      ),
                      Text(
                        "johndoe@gmail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFF171D1F)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                    top: 18.0, left: 20, right: 20, bottom: 5),
                color: const Color(0xFFF0F0F0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: const Color(0xFFB3BBBF),
                              width: 1,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Column(children: [
                              ButtonWithTwoIcons(
                                  name: "Meus Pets", stringLeftIcon: petIcon),
                              const Divider(
                                height: 1,
                              ),
                              ButtonWithTwoIcons(
                                  name: "Editar Perfil",
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, "/profile_edit");
                                  },
                                  stringLeftIcon: personNotSelectedIcon),
                              const Divider(
                                height: 1,
                              ),
                              ButtonWithTwoIcons(
                                  name: "Ferramentas",
                                  stringLeftIcon: clickerIcon),
                              const Divider(
                                height: 1,
                              ),
                              ButtonWithTwoIcons(
                                  name: "Gerenciar Assinatura",
                                  stringLeftIcon: premiumIcon),
                              const Divider(
                                height: 1,
                              ),
                              ButtonWithTwoIcons(
                                  name: "Alterar Senha",
                                  stringLeftIcon: lockIcon),
                            ]),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: const Color(0xFFB3BBBF),
                              width: 1,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Column(children: [
                              ButtonWithTwoIcons(
                                  name: "Sair", stringLeftIcon: logoutIcon),
                            ]),
                          ),
                        ),
                      ],
                    ),
                    FutureBuilder(
                        future: PackageInfo.fromPlatform(),
                        builder: (BuildContext context,
                            AsyncSnapshot<PackageInfo> snapshot) {
                          if (snapshot.hasData) {
                            return Text(
                              "Versão ${snapshot.data!.version}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFF171D1F)),
                            );
                          } else {
                            return Container();
                          }
                        })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
