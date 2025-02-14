import 'package:flutter/cupertino.dart';

import '../../../core/widgets/custom_button.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            width: 300,
            child: CustomButton(text: "SIgn In", onPressed: () {})));
  }
}
