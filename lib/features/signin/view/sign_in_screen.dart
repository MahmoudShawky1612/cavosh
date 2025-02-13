import 'package:cavosh/core/widgets/custom_button.dart';
import 'package:cavosh/core/widgets/custom_header.dart';
import 'package:cavosh/core/widgets/custom_header_text.dart';
import 'package:cavosh/features/signup/view/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';
import 'header_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomHeader(),
          const CustomHeaderText(text: "Let's get you signed in!s",),
          SignInHeaderButton(),
        ],
      ),
    );
  }
}
