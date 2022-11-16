import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:flutter/material.dart';

class HeadScreenWidget extends StatelessWidget {
  final String title;
  final Function() press;
  final double topPadding, height;
  const HeadScreenWidget({Key? key,
    required this.title,
    required this.press, required this.topPadding, required this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      //200,
      child: Padding(
        padding: EdgeInsets.only(left: 25, right: 25, top:topPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Image.asset(
                'assets/images/back.png',
                color: textPassiveColor,
                width: 48,
                height: 24,
              ),
              onTap: press,
            ),
            const SizedBox(
              height: 13,
            ),
            SizedBox(
              width: 300,
              child: Text(
                title,
                style: handTextStyleGrin,
                overflow: TextOverflow.clip,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}