import 'package:flutter/material.dart';

class TextFieldWithTitle extends StatelessWidget {
  final String title;
  final String? labelText;
  final bool? enabled;
  final Widget? suffixIcon;

  const TextFieldWithTitle({
    super.key,
    required this.title,
    this.labelText,
    this.enabled,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xff171D1F),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          enabled: enabled,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: labelText ?? title,
          ),
        ),
      ],
    );
  }
}
