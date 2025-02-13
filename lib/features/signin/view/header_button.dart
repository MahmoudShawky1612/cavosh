import 'package:cavosh/features/signin/view/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/custom_button.dart';
import '../../signup/view/sign_up_screen.dart';

class SignInHeaderButton extends StatelessWidget{
  const SignInHeaderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
            }, topRight: 0, bottomRight: 0, color: AppColors.primary),
            CustomButton(text: "Sign Up", onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
            }, topLeft: 0, bottomLeft: 0, color: AppColors.button,),
          ],
        ),
      ),
    );
  }

}