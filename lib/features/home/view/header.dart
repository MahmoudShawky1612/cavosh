import 'package:flutter/cupertino.dart';

import '../../../core/widgets/custom_header.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: CustomHeader(
        height: 150,
      ),
    );
  }
}
