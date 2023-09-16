import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'bottom_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'budz teste',
      home: BottomWidget(),
    );
  }
}
