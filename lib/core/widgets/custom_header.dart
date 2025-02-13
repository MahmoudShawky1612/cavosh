import 'package:flutter/cupertino.dart';

class CustomHeader extends StatelessWidget{
  final double height;

  const CustomHeader({super.key, this.height = 200});
  @override
  Widget build(BuildContext context) {



    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
    );
  }

}