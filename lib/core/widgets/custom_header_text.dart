import 'package:flutter/cupertino.dart';

import '../utils/text.dart';

class HeaderText extends StatelessWidget{
  final String text;
  const HeaderText({super.key, required this.text });
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