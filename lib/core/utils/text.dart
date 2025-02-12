import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AppTextStyles{

  static const headLine = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
    fontFeatures: [FontFeature.enable('smcp')],
    color:AppColors.white
  );

  static const medium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
    color:AppColors.black
  );

  static const small = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    color:AppColors.black
  );
}