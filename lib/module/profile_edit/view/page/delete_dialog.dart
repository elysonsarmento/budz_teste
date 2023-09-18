import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../widgets/icons/icons_string.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    height: 4,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xff000000),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffF0F0F0)),
                  child: const Icon(
                    Icons.close,
                    color: Color(0xff171D1F),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                const Text(
                  "Tem certeza que deseja encerrar a jornada do seu melhor amigo?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: SvgPicture.asset(
                    dogBadImage,
                    height: 200,
                    width: 200,
                  ),
                ),
                const Text(
                  "Todas as suas informações e a evolução do seu pet no aplicativo serão apagadas. Essa ação não pode ser desfeita.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
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
              color: const Color(0xffF14A29),
              onPressed: () {
                Navigator.pushNamed(context, '/delete_reason');
              },
              child: Text(
                "Excluir Conta".toUpperCase(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )),
          TextButton(
              onPressed: () async {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xff171D1F),
              ),
              child: const Text("Cancelar",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ))),
        ],
      ),
    );
  }
}
