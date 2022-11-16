import 'package:flutter/material.dart';

import '../../constants/constants.dart';

//Виджет отображающийся при отсутствии активных поездок

class ActiveTravelNotWidget extends StatelessWidget {
  const ActiveTravelNotWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 156),
        Image.asset(
          'assets/images/bringing.png',
          height: 217,
        ),
        const SizedBox(
          height: 50,
        ),
        const Text('Здесь появятся ваши будущие поездки',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: textActiveColor,
            )),
        const SizedBox(
          height: 30,
        ),
        const Text(
            'Выбирайте из множества направлений или опубликуйте поездку, '
                'чтобы разделить расходы с попутчиками.',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: textPassiveColor,
            )),
      ]),
    );
  }
}