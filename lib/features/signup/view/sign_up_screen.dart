import 'package:cavosh/core/widgets/custom_header.dart';
import 'package:cavosh/core/widgets/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'header_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          CustomHeader(),
          CustomHeaderText(text: "Let's get you registered!"),
          SignUpHeaderButton(),
        ],
      ),
    );
  }
}
