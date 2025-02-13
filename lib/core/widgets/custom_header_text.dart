import 'package:flutter/cupertino.dart';

import '../utils/text.dart';

class CustomHeaderText extends StatelessWidget{
  final String text;
  const CustomHeaderText({super.key, required this.text });
  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 100,
      left: 10,
      child: Text(
        text,
        style: AppTextStyles.headLine,
      ),
    );
  }
}