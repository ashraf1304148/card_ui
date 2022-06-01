import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // height
  static double height5 = screenHeight / 168.8;
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.75;

  // width
  static double width5 = screenHeight / 168.8;
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.75;

  // font
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;

  // raduis
  static double radius10 = screenHeight / 84.4;
//************************************ */

  // header
  static double headerHeight = screenHeight * .23;
  static double headerWidth = screenWidth;

  // slider
  static double sliderHeight = screenHeight * .25;
  static double sliderWidth = screenWidth * .94;

  // list view
  static double listWidgetHeight = screenHeight * .45;
  static double listWidgetWidth = sliderWidth;

  // list Widget
  static double listItemHeight = listWidgetHeight * 0.45;
  static double listItemWidth = listWidgetWidth;
}
