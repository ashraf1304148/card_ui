import 'package:card_ui/utils/colors.dart';
import 'package:card_ui/utils/dimensions.dart';
import 'package:card_ui/widgets/big_text.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.headerWidth,
      height: Dimensions.headerHeight,
      padding: EdgeInsets.only(
          top: Dimensions.headerHeight * .3,
          right: Dimensions.headerWidth * .25,
          bottom: Dimensions.headerHeight * .2),
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(Dimensions.radius10 * 5)),
        boxShadow: [
          BoxShadow(
            color: AppColors.mainColor,
            offset: Offset(-5, 5),
            blurRadius: Dimensions.height10,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Container(
        // height: screenHeight * .16,
        padding: EdgeInsets.only(left: Dimensions.height20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(
              text: "Your Books",
              size: Dimensions.font26 * 1.2,
              color: AppColors.textColor,
            ),
          ],
        ),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(Dimensions.radius10 * 5),
            topRight: Radius.circular(Dimensions.radius10 * 5),
          ),
        ),
      ),
    );
  }
}
