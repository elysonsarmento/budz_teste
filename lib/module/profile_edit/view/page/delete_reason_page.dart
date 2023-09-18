import 'package:flutter/material.dart';

import '../../../../widgets/buttons/button_item_select.dart';

class DeleteReasonPage extends StatefulWidget {
  const DeleteReasonPage({super.key});

  @override
  State<DeleteReasonPage> createState() => _DeleteReasonPageState();
}

class _DeleteReasonPageState extends State<DeleteReasonPage> {
  final itemSelect = <bool>[false, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              const Text(
                "Conta pra gente, qual o motivo da exclusão?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ItemSelect(
                title: "Eu não uso mais o Budz",
                isSelected: itemSelect[0],
                onTap: () {
                  setState(() {
                    itemSelect[0] = !itemSelect[0];
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ItemSelect(
                title: "Valores das assinaturas",
                isSelected: itemSelect[1],
                onTap: () {
                  setState(() {
                    itemSelect[1] = !itemSelect[1];
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ItemSelect(
                title: "Insatisfação com os serviços oferecidos",
                isSelected: itemSelect[2],
                onTap: () {
                  setState(() {
                    itemSelect[2] = !itemSelect[2];
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ItemSelect(
                title: "Tive problemas técnicos",
                isSelected: itemSelect[3],
                onTap: () {
                  setState(() {
                    itemSelect[3] = !itemSelect[3];
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ItemSelect(
                title: "Conteúdos ruins ou irrelevantes",
                isSelected: itemSelect[4],
                onTap: () {
                  setState(() {
                    itemSelect[4] = !itemSelect[4];
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ItemSelect(
                title: "Experiência e usabilidade",
                isSelected: itemSelect[5],
                onTap: () {
                  setState(() {
                    itemSelect[5] = !itemSelect[5];
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ItemSelect(
                title: "Outro",
                isSelected: itemSelect[6],
                onTap: () {
                  setState(() {
                    itemSelect[6] = !itemSelect[6];
                  });
                },
              ),
              const SizedBox(
                height: 40,
              ),
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
                  onPressed: () {
                    Navigator.pushNamed(context, "/delete_confirm");
                  },
                  child: Text(
                    "Continuar".toUpperCase(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
