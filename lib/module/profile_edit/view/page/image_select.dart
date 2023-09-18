import 'package:flutter/material.dart';

import '../../../../widgets/buttons/button_with_two_icons.dart';
import '../../../../widgets/icons/icons_string.dart';

class DialogImageSelect extends StatelessWidget {
  const DialogImageSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
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
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffF0F0F0)),
                  child: const Icon(
                    Icons.close,
                    color: Color(0xff171D1F),
                  ),
                ),
              )
            ],
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
              child: ButtonWithTwoIcons(
                  name: "Tirar Foto", stringLeftIcon: premiumIcon),
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
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
              child: ButtonWithTwoIcons(
                  name: "Escolher Foto", stringLeftIcon: premiumIcon),
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
        ],
      ),
    );
  }
}
