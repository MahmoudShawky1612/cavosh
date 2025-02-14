import 'package:flutter/material.dart';

import 'features/signin/view/sign_in_screen.dart';
import 'features/signup/view/sign_up_screen.dart';
import 'features/start/view/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}

