import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';
import '../../../core/widgets/custom_button.dart';

class ColumnObjects extends StatelessWidget {
  const ColumnObjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 570,
      left: 110,
      right: 110,
      child: Column(
        children: [
          Text(
            "Welcome to",
            style: AppTextStyles.headLine.copyWith(
              shadows: [
                const Shadow(
                  blurRadius: 12.0,
                  color: Colors.black54,
                  offset: Offset(-5.0, 5.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Cavosh",
            style: AppTextStyles.headLine.copyWith(
              color: AppColors.primary,
              shadows: [
                const Shadow(
                  blurRadius: 15.0,
                  color: Colors.black54,
                  offset: Offset(-5.0, 5.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          CustomButton(
            text: 'Get Started',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}