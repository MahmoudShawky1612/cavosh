import 'package:flutter/cupertino.dart';

import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';

class Separator extends StatelessWidget{
  const Separator({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 560,
      left: 0,
      right: 0,
      child: Row(
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
            "or sign in with",
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
      ),
    );
  }
}