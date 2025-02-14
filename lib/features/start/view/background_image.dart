import 'package:flutter/cupertino.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child:Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/start.jpg'),
                fit: BoxFit.cover
            )
        ),
      ),
    );
}
}