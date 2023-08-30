import 'package:coding_with_tea_intro/src/constants/colors.dart';
import 'package:coding_with_tea_intro/src/features/controllers/on_boarding_controller.dart';
import 'package:coding_with_tea_intro/src/features/models/onboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_widget.dart';
 class OnBoardingScreen extends StatelessWidget {


  final OnBoardingController _controller = Get.put(OnBoardingController());


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return  Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
              pages: _controller.pages,
            liquidController: _controller.controller,
            onPageChangeCallback: _controller.onPageChangeCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            top: 50,
              right: 20,
              child: TextButton(
                  onPressed: (){
                        _controller.Skip();
                  },
                  child: Text(
                      'SKIP',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ))

          ),
          Obx(
              () =>
             Positioned(
              bottom: 100,
                left: 180,
                right: 180,
                child: AnimatedSmoothIndicator(
                    activeIndex:_controller.currentPage.value,
                    effect: WormEffect(
                      activeDotColor: limegreenColor,
                      dotHeight: 5
                    ),
                    count: 3)
            ),
          )
        ],
      ),
    );
  }


}

