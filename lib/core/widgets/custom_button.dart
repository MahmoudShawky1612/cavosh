import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../utils/text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final double topLeft;
  final double bottomRight;
  final double topRight;
  final double bottomLeft;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.button,
     this.topLeft =20,
     this.bottomRight =20,
     this.topRight =20 ,
     this.bottomLeft=20,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomRight: Radius.circular(bottomRight),
            topRight: Radius.circular(topRight),
            bottomLeft: Radius.circular(bottomLeft),
          ),
        ),
      ),
      onPressed: () => onPressed(),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(
          text,
          style: AppTextStyles.medium.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}