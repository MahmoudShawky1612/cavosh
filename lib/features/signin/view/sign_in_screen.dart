import 'package:cavosh/core/widgets/custom_button.dart';
import 'package:cavosh/core/widgets/custom_header.dart';
import 'package:cavosh/core/widgets/custom_header_text.dart';
import 'package:cavosh/core/widgets/custom_text_field.dart';
import 'package:cavosh/features/signin/view/separator.dart';
import 'package:cavosh/features/signin/view/sign_in_button.dart';
import 'package:cavosh/features/signin/view/text_fields.dart';
import 'package:cavosh/features/signin/view/third_party.dart';
import 'package:cavosh/features/signup/view/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';
import 'forgot_password.dart';
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
      child:  Scaffold(
        body: Stack(
          children: [
            const CustomHeader(),
            const CustomHeaderText(text: "Let's get you signed in!s",),
            const SignInHeaderButton(),
            TextFields(),
            const ForgotPassword(),
            const SignInButton(),
            const Separator(),
            const ThirdParty(),
          ],
        ),
      ),
    );
  }
}
