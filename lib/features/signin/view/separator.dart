import 'package:flutter/cupertino.dart';

import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';

class Separator extends StatelessWidget{
  final String text;
  const Separator({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Container(
      width:100,
      height: 2,
      decoration: const BoxDecoration(
          color: AppColors.black
      ),
    ),
        const SizedBox(width: 10,),
      Align(
        alignment: Alignment.center,
        child: Text(
         text,
          style: AppTextStyles.medium.copyWith(color: AppColors.black),
        ),
      ),
      const SizedBox(width: 10,),
    Container(
    width:100,
    height: 2,
    decoration: const BoxDecoration(
    color: AppColors.black
    ),
    ),
      ],
    );
  }
}