import 'package:card_ui/utils/dimensions.dart';
import 'package:card_ui/widgets/slider_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.sliderHeight,
      width: Dimensions.sliderWidth,
      margin: EdgeInsets.only(
        left: (Dimensions.screenWidth - Dimensions.screenWidth) / 2,
        right: (Dimensions.screenWidth - Dimensions.screenWidth) / 2,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(-10, 30),
            blurRadius: Dimensions.height30,
            spreadRadius: 0,
          ),
        ],
      ),
      child: PageView.builder(
          itemCount: 10,
          // scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SliderItem();
          }),
    );
  }
}
