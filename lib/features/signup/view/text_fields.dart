import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/custom_text_field.dart';

class TextFieldsU extends StatelessWidget {
  const TextFieldsU({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(
          text: "Email",
          prefixIcon: Icon(Icons.email),
          prefixIconColor: AppColors.primary,
        ),
        SizedBox(height: 20),
        CustomTextField(
          text: "Username",
          prefixIcon: Icon(Icons.person),
          prefixIconColor: AppColors.primary,
        ),
        SizedBox(height: 20),
        CustomTextField(
          text: "Password",
          prefixIcon: Icon(Icons.password_rounded),
          prefixIconColor: AppColors.primary,
          suffixIcon: Icons.remove_red_eye_outlined,
          isPassword: true,
        ),
        SizedBox(height: 20),
        CustomTextField(
          text: "Confirm Password",
          prefixIcon: Icon(Icons.password_rounded),
          prefixIconColor: AppColors.primary,
          suffixIcon: Icons.remove_red_eye_outlined,
          isPassword: true,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
