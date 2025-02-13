import 'package:cavosh/features/signin/view/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/custom_button.dart';

class SignUpHeaderButton extends StatelessWidget{
  const SignUpHeaderButton({super.key});

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
            }, topRight: 0, bottomRight: 0, color: AppColors.button),
            CustomButton(text: "Sign Up", onPressed: () {
            }, topLeft: 0, bottomLeft: 0, color: AppColors.primary,),
          ],
        ),
      ),
    );
  }

}