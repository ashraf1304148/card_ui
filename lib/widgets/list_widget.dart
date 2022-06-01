import 'package:card_ui/utils/dimensions.dart';
import 'package:card_ui/widgets/list_item.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.listWidgetHeight,
      width: Dimensions.listWidgetWidth,
      margin: EdgeInsets.only(
          left: (Dimensions.screenWidth - Dimensions.listWidgetWidth) / 2),
      child: ListView.builder(
          padding: EdgeInsets.all(0),
          itemCount: 3,
          itemBuilder: (context, index) {
            return ListItem(
              index: index,
              title: "the best",
              text: "Your life starts here",
            );
          }),
    );
  }
}
