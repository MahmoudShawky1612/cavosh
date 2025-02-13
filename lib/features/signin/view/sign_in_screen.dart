import 'package:cavosh/core/widgets/custom_button.dart';
import 'package:cavosh/core/widgets/custom_header.dart';
import 'package:cavosh/core/widgets/custom_header_text.dart';
import 'package:cavosh/core/widgets/custom_text_field.dart';
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
    return  GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Stack(
          children: [
            const CustomHeader(),
            const CustomHeaderText(text: "Let's get you signed in!s",),
            const SignInHeaderButton(),
            Positioned(
                top: 300,
                left: 30,
                right: 30,
                child:  CustomTextField(text: "Email", prefixIcon: Icon(Icons.person), prefixIconColor: AppColors.primary,)),
            Positioned(
                top: 400,
                left: 30,
                right: 30,
                child: CustomTextField(text: "Password", prefixIcon: Icon(Icons.password_rounded), prefixIconColor: AppColors.primary, suffixIcon: Icons.remove_red_eye_outlined, isPassword: true,)),
          ],
        ),
      ),
    );
  }
}
