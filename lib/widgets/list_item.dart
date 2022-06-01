import 'package:card_ui/utils/colors.dart';
import 'package:card_ui/utils/dimensions.dart';
import 'package:card_ui/widgets/big_text.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title, text;
  final int index;
  const ListItem({
    required this.index,
    required this.title,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.listItemHeight,
      width: Dimensions.listItemWidth,
      padding: EdgeInsets.fromLTRB(Dimensions.listItemHeight * .20,
          Dimensions.listItemHeight * .28, 0, 0),
      margin: EdgeInsets.only(
          bottom: Dimensions.height10, top: Dimensions.height10),
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: (index.isEven)
            ? BorderRadius.only(
                bottomLeft: Radius.circular(Dimensions.height10 * 7))
            : BorderRadius.only(
                bottomRight: Radius.circular(Dimensions.height10 * 7)),
        boxShadow: [
          BoxShadow(
            color: AppColors.mainColor,
            offset: Offset(-3, 4),
            blurRadius: Dimensions.height10 * .8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        BigText(
          text: title.toUpperCase(),
          size: Dimensions.font16,
          color: Colors.white70,
        ),
        BigText(
          text: text,
          // size: Dimensions.font16,
          color: Colors.white,
        ),
      ]),
    );
  }
}
