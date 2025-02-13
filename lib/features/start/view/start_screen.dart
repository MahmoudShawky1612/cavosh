import 'package:cavosh/features/start/view/background_image.dart';
import 'package:cavosh/features/start/view/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Stack(
      children: [
        BackGroundImage(),
        const ColumnObjects(),
      ],
    ),
    );
  }
}
