import 'package:cavosh/core/widgets/custom_button.dart';
import 'package:cavosh/core/widgets/custom_header.dart';
import 'package:cavosh/core/widgets/custom_header_text.dart';
import 'package:cavosh/core/widgets/custom_text_field.dart';
import 'package:cavosh/features/signup/view/sign_up_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      child:  Scaffold(
        body: Stack(
          children: [
            CustomHeader(),
            CustomHeaderText(text: "Let's get you signed in!s",),
            SignInHeaderButton(),
            const Positioned(
                top: 300,
                left: 30,
                right: 30,
                child:  CustomTextField(text: "Email", prefixIcon: Icon(Icons.person), prefixIconColor: AppColors.primary,)),
            const Positioned(
                top: 400,
                left: 30,
                right: 30,
                child: CustomTextField(text: "Password", prefixIcon: Icon(Icons.password_rounded), prefixIconColor: AppColors.primary, suffixIcon: Icons.remove_red_eye_outlined, isPassword: true,)),
            Positioned(
                top: 480,
                right: 30,
              child: Text(
                "Forgot Password?",
                style: AppTextStyles.small.copyWith(color: AppColors.primary),
              ),
            ),
            Positioned
              (
              top: 520,
              left: 0,
              right: 0,
              child: Align(
                  alignment: Alignment.center ,
                  child: SizedBox(
                      width: 300,
                      child: CustomButton(text: "SIgn In", onPressed: (){}))),
            ),
            Positioned(
                top: 600,
                right: 0,
                left: 0,
              child: SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "or sign in with",
                    style: AppTextStyles.medium.copyWith(color: AppColors.black),
                  ),
                ),
              ),
            ),
           Positioned(
             top: 613,
             left: 20,
             child:  Container(
             width:100,
             height: 2,
             decoration: const BoxDecoration(
                 color: AppColors.black
             ),
           ),),
            Positioned(
             top: 613,
             right:  20,
             child:  Container(
             width:100,
             height: 2,
             decoration: const BoxDecoration(
               color: AppColors.black
             ),
           ),),
            Positioned(
              top: 650,
              left: 0,
              right: 0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.facebook,
                        color: AppColors.blue,
                        size: 43,
                      ),
                    ),
                    SizedBox(width: 20,),
                    IconButton(
                      onPressed: () {},
                      icon:  const FaIcon(
                        FontAwesomeIcons.apple,
                        color: AppColors.black,
                        size: 43,
                      ),
                    ),
                    SizedBox(width: 20,),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                        size: 43,
                      ),
                    ),
                  ],
                ),
              ),
            ),

           Positioned(
             top: 750,
             left: 0,
             right: 0,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Don't have an account?", style: AppTextStyles.small.copyWith(color: AppColors.black),),
                 const SizedBox(width: 5,),
                 Text("Sign Up", style: AppTextStyles.small.copyWith(color: AppColors.primary),),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
