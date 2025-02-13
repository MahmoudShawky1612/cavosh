import 'package:cavosh/core/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    // body:Container(
    //   decoration: const BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage('assets/images/start.jpg'),
    //       fit: BoxFit.cover
    //     )
    //   ),
    //   child: const Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(
    //             "Welcome to Cavosh",
    //             style: AppTextStyles.headLine,
    //           ),
    //         ],
    //       ),
    //   )
    // ),
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
                    Shadow(
                      blurRadius: 12.0,
                      color: AppColors.black,
                      offset: Offset(-5.0, 5.0),
                    ),
                  ],
                )),
                SizedBox(height: 10,),
                Text("Cavosh", style:AppTextStyles.headLine.copyWith(
                    color: AppColors.primary,
                    shadows: [
                      Shadow(
                        blurRadius: 15.0,
                        color: AppColors.black,
                        offset: Offset(-5.0, 5.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black, // Shadow color with opacity
                        blurRadius: 15, // Blur value
                        offset: Offset(-5, 5), // Offset (horizontal, vertical)
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.button,
                      foregroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),

                    ),
                    onPressed: () { },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child:  Text('Continue', style: AppTextStyles.medium.copyWith(color: AppColors.white),),
                    ),
                  ),
                )
              ],
            )
        )
      ],
    ),
    );
  }
}
