import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/proceed_button.dart';

class SuccessRequestScreen extends StatelessWidget {
  const SuccessRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 74),
              child: Text(
                'СПАСИБО, ЗАПРОС ОТПРАВЛЕН',
                style: handTextStyleGrin,
                overflow: TextOverflow.clip,
                softWrap: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Image.asset('assets/images/male_achieved.png', height: 220,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: ProceedButton(text: 'ПРОДОЛЖИТЬ',
                press: () => Navigator.of(context).pushNamed(Screens.main),
                color: primaryColor,),
            ),
            const Icon(Icons.error, color: errorColor, size: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text('Не переводите предоплату водителю перед поездкой. '
                  'Будьте осторожны!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: errorColor,
                  ))),
          ],
        ),
      ),
    );
  }
}
