import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../widgets/icons/icons_string.dart';

class DeleteCofirm extends StatelessWidget {
  const DeleteCofirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
                Expanded(child: SvgPicture.asset(logoImage))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(dogByeImage),
                const Column(
                  children: [
                    Text(
                      'Sua conta foi excluída',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF171D1F),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.0),
                      child: Text(
                        'É uma pena ver você indo embora! Mas fica tranquilo, estaremos de braços abertos caso queira voltar. Até logo! 💙',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF3A484D),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: MaterialButton(
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
            ),
          ],
        ),
      ),
    );
  }
}
