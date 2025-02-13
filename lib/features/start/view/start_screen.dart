import 'package:cavosh/core/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/text.dart';
import '../../../core/widgets/custom_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Stack(
      children: [
        Positioned(
            child:Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/start.jpg'),
                      fit: BoxFit.cover
                  )
              ),
            ),
        ),

         Positioned(
          top: 570,
            left: 110,
            right: 110,
            child:Column(
              children: [
                Text("Welcome to", style: AppTextStyles.headLine.copyWith(
                  shadows: [
                    const Shadow(
                      blurRadius: 12.0,
                      color: Colors.black54,
                      offset: Offset(-5.0, 5.0),
                    ),
                  ],
                )),
                const SizedBox(height: 10,),
                Text("Cavosh", style:AppTextStyles.headLine.copyWith(
                    color: AppColors.primary,
                    shadows: [
                      const Shadow(
                        blurRadius: 15.0,
                        color: Colors.black54,
                        offset: Offset(-5.0, 5.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 15,
                        offset: Offset(-5, 5),
                      ),
                    ],
                  ),
                  child:CustomButton(text: 'Get Started', onPressed: (){
                  },)
                )
              ],
            )
        )
      ],
    ),
    );
  }
}
