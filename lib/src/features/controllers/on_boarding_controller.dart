import 'package:coding_with_tea_intro/src/features/models/onboard.dart';
import 'package:coding_with_tea_intro/src/features/screens/on_boarding_screen/onboarding_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();

  //to enable the dot to mmove as we switch pages
  RxInt currentPage = 0.obs;

  final pages =[
    onBoardingWidget(
      model: OnboardingModel(
        image: 'assets/images/Mask Group.png',
        title: 'Empowering the Next Generation of Doers',
      ),

    ),
    onBoardingWidget(
      model: OnboardingModel(
        image: 'assets/images/Mask Group (1).png',
        title: 'Drivers of this Intiative',
      ),

    ),
    onBoardingWidget(
      model: OnboardingModel(
        image: 'assets/images/Mask Group (4).png',
        title: 'Partnerships',

      ),
    ),
  ];
  onPageChangeCallback(int activePageIndex) {

      currentPage.value = activePageIndex;

  }
  Skip() {

    int nextPage = controller.currentPage +1;
    controller.jumpToPage(page: nextPage);

  }


}