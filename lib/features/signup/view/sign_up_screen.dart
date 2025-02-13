import 'package:cavosh/core/widgets/custom_button.dart';
import 'package:cavosh/core/widgets/custom_header.dart';
import 'package:cavosh/features/signin/view/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomHeader(),
          const Positioned(
            top: 100,
            left: 10,
            child: Text(
              "Let's get you registered!",
              style: AppTextStyles.headLine,
            ),
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0, // Ensure it takes full width
            child: SizedBox(
              width: double.infinity, // Forces the Row to take full width
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(text: "Sign In", onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
                  }, topRight: 0, bottomRight: 0, color: AppColors.button),
                  CustomButton(text: "Sign Up", onPressed: () {
                  }, topLeft: 0, bottomLeft: 0, color: AppColors.primary,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
