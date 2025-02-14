import 'package:flutter/cupertino.dart';

import '../../../core/constants/colors.dart';
import '../../../core/utils/text.dart';

class ForgotPassword extends StatelessWidget{
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
   return Align(
     alignment: Alignment.centerRight,
     child: Text(
       "Forgot Password?",
       style: AppTextStyles.small.copyWith(color: AppColors.primary),
     ),
   );
  }

}