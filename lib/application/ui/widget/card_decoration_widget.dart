import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:flutter/material.dart';
//виджет декорации карты
class CardDecorationWidget extends StatelessWidget {
  final Widget cardWidget;

  const CardDecorationWidget({Key? key, required this.cardWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        color: backGroundColor,
        shadowColor: textPassiveColor,
        elevation: 1.5,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: cardWidget));
  }
}