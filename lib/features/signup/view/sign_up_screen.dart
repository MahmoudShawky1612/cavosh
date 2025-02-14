import 'package:cavosh/core/widgets/custom_header.dart';
import 'package:cavosh/core/widgets/custom_header_text.dart';
import 'package:cavosh/features/signin/view/separator.dart';
import 'package:cavosh/features/signup/view/sign_up_button.dart';
import 'package:cavosh/features/signup/view/text_fields.dart';
import 'package:flutter/material.dart';
import '../../signin/view/third_party.dart';
import 'header_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        body: Stack(
          children: [
            CustomHeader(),
            CustomHeaderText(text: "Let's get you registered!"),
            SignUpHeaderButton(),
            Padding(
              padding: EdgeInsets.only(top: 260.0, left: 20, right: 20),
              child: SizedBox(
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFieldsU(),
                      SignUpButton(),
                      SizedBox(height: 20),
                      Separator(text: 'or sign up with'),
                      SizedBox(height: 20),
                      ThirdParty(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
