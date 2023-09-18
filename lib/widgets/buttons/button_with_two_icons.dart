import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonWithTwoIcons extends StatelessWidget {
  final String name;
  final String stringLeftIcon;
  const ButtonWithTwoIcons(
      {super.key, required this.name, required this.stringLeftIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      color: const Color(0xFFFFFFFF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              stringLeftIcon,
              width: 20,
              height: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFF171D1F)),
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF171D1F),
          )
        ],
      ),
    );
  }
}
