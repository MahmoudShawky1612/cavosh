import 'package:cavosh/core/constants/colors.dart';
import 'package:cavosh/features/main/view/main_screen.dart';
import 'package:flutter/material.dart';

import 'features/signup/view/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
