import 'package:card_ui/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  TextOverflow overflow;
  FontWeight fontWeight;
  BigText({
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.size = 0,
    required this.text,
    this.color = const Color(0xFF332d2b),
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontSize: size == 0 ? Dimensions.font20 * 1.2 : size,
        fontFamily: 'Roboto',
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
