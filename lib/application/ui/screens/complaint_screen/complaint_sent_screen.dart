import 'package:analoguebbcars/application/ui/navigation/main_navigation.dart';
import 'package:analoguebbcars/application/ui/widget/proceed_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class ComplaintSentScreen extends StatelessWidget {
  const ComplaintSentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/complaintImage.png', height: 175,),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 17),
              child: Center(
                child: Text(
                  'Спасибо, что помогаете сделать сообщество лучше. Жалоба отправлена, мы примем меры',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color:textActiveColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.72,
                  ),
                ),
              ),
            ),
            ProceedButton(
                text: 'Продолжить',
                color: primaryColor,
                press: () =>
                    Navigator.of(context).pushNamed(Screens.travelTripCarrier)),
          ],
        ),
      ),
    );
  }
}
