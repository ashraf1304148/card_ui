import 'package:card_ui/utils/colors.dart';
import 'package:card_ui/utils/dimensions.dart';
import 'package:card_ui/widgets/big_text.dart';
import 'package:card_ui/widgets/small_text.dart';
import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  final String title, author, text, img;
  const SliderItem({
    Key? key,
    this.title = "Big Miacles",
    this.author = "Dylan Ahmed",
    this.text = "It's longer than life",
    this.img = "assets/images/1.jpg",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.sliderWidth,
      height: Dimensions.sliderHeight,
      // decoration: BoxDecoration(
      //   color: Colors.amber,
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey,
      //       offset: Offset(-10, 10),
      //       // blurRadius: Dimensions.height10,
      //       spreadRadius: 4,
      //     ),
      //   ],
      // ),

      // color: Colors.amber,
      child: Stack(children: [
        // main Container
        Positioned(
          top: Dimensions.height30,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        // details
        Positioned(
          top: Dimensions.height10 * 4,
          left: (Dimensions.sliderWidth * .5),
          right: Dimensions.height20,
          bottom: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(
                text: title,
                color: AppColors.mainColor,
                size: Dimensions.font26,
              ),
              SizedBox(height: Dimensions.height5),
              SmallText(text: author, size: Dimensions.font16),
              Divider(
                height: Dimensions.height20,
                thickness: Dimensions.height20 * .3,
                // indent: D,
              ),
              SmallText(text: text, size: Dimensions.font16),
            ],
          ),
        ),
        //image
        Positioned(
          top: 0,
          left: Dimensions.height15,
          right: Dimensions.sliderWidth * .5 + Dimensions.height10,
          bottom: Dimensions.height15,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.height15),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              color: AppColors.mainColor,
            ),
          ),
        ),
      ]),
    );
  }
}
