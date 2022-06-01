import 'package:card_ui/utils/dimensions.dart';
import 'package:card_ui/widgets/header.dart';
import 'package:card_ui/widgets/list_widget.dart';
import 'package:card_ui/widgets/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:card_ui/widgets/big_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Header(),
        // SizedBox(height: Dimensions.height20),
        SliderWidget(),
        // SizedBox(height: Dimensions.height20),
        ListWidget(),

      ],
    ));
  }
}
