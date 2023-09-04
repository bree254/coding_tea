import 'package:coding_with_tea_intro/src/constants/colors.dart';
import 'package:coding_with_tea_intro/src/features/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);
    final SplashController _controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _controller.startAnimation();
    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          decoration:  BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [secondaryColor, primaryColor]
              )
          ),
          // duration: Duration(milliseconds: 1600),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image(image: AssetImage('assets/images/logo.png')),

              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Text(
                      'Dreamers Club Africa',
                      style: TextStyle(
                          fontSize: 20,
                          color: greenColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      'Humanitarian Responsibility Initiatives',
                      style: TextStyle(
                          fontSize: 17, color: whiteColor
                      ),
                    ),
                    Text(
                      '(HRI)',
                      style: TextStyle(
                          fontSize: 17, color: orangeColor
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      // ),
    );
  }
}