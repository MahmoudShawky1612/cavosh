import 'package:flutter/cupertino.dart';

import '../../../core/widgets/custom_button.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});


  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center ,
        child: SizedBox(
            width: 300,
            child: CustomButton(text: "SIgn Up", onPressed: (){})));
  }
}