import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/proceed_button.dart';

class PaymentTripScreen extends StatefulWidget {
  const PaymentTripScreen({Key? key}) : super(key: key);

  @override
  State<PaymentTripScreen> createState() => _PaymentTripScreenState();
}

class _PaymentTripScreenState extends State<PaymentTripScreen> {
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
            'assets/images/payment.png',
            height: 262,
          ),
          const Text('200₽',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                fontSize: 50,
                color: errorColor,
              )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            child: Text('Необходимо оплатить публикацию поездки',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: textActiveColor,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20, top: 10,
            ),
            child: ProceedButton(
              text: 'ОПЛАТИТЬ',
              press: () =>  Navigator.of(context).pushNamed(Screens.paymentCompleted),
              color: primaryColor,),
          ),
          const Icon(Icons.error, color: errorColor, size: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text('В случае отсутствия бронирования деньги будут возвращены',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: errorColor,
                )),
          ),
        ],
      ),
    );
  }
}
