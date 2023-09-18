import 'package:flutter/material.dart';

class ItemSelect extends StatelessWidget {
  final String title;
  final bool? isSelected;
  final Function? onTap;
  const ItemSelect({
    super.key,
    required this.title,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: isSelected == true ? const Color(0xffDFFAFD) : Colors.white,
          border: Border.all(
            color: isSelected == true
                ? const Color(0xffDFFAFD)
                : const Color(0xffBABABA),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected == true
                      ? const Color(0xff6BDFF2)
                      : const Color(0xff3A484D),
                ),
              ),
              child: Visibility(
                visible: isSelected!,
                child: Center(
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff6BDFF2),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff171D1F),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
