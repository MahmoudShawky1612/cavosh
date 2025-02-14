import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/widgets/custom_text_field.dart';

class TextFields extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 270,
      left: 30,
      right: 30,
      child: Column(
        children: [
          CustomTextField(text: "Email", prefixIcon: Icon(Icons.person), prefixIconColor: AppColors.primary,),
          SizedBox(height: 30,),
          CustomTextField(text: "Password", prefixIcon: Icon(Icons.password_rounded), prefixIconColor: AppColors.primary, suffixIcon: Icons.remove_red_eye_outlined, isPassword: true,),
        ],
      ),
    );

  }

}