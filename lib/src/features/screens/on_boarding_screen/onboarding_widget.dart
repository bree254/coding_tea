import 'package:coding_with_tea_intro/src/constants/colors.dart';
import 'package:coding_with_tea_intro/src/features/models/onboard.dart';
import 'package:flutter/material.dart';
class onBoardingWidget extends StatelessWidget {
  const onBoardingWidget({
    super.key,
    required this.model,
  });


  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              primaryColor,
              secondaryColor,
            ],
          )

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height *0.4,
          ),
          // SizedBox(height: 5),
          Text(
            model.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ishwhiteColor,
            ),

          )
        ],
      ),
    );
  }
}