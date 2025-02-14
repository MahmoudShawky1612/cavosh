import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants/colors.dart';

class ThirdParty extends StatelessWidget {
  const ThirdParty({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.facebook,
            color: AppColors.blue,
            size: 50,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.apple,
            color: AppColors.black,
            size: 50,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.google,
            color: Colors.red,
            size: 50,
          ),
        ),
      ],
    );
  }
}
