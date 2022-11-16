import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:flutter/material.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/proceed_button.dart';

class PaymentCompletedScreen extends StatelessWidget {
  const PaymentCompletedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size / 6,
          ),
          Image.asset(
            'assets/images/trip_ok.png',
            height: 262,
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            child: Text('Спасибо ваша поездка успешно создана',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: primaryColor,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 10,
            ),
            child: ProceedButton(
              text: 'ПРОДОЛЖИТЬ',
              press: () =>  Navigator.of(context).pushNamed(Screens.main),
              color: primaryColor,),
          ),

        ],
      ),
    );
  }
}
