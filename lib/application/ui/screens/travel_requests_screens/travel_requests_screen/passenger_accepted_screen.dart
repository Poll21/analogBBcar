import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/proceed_button.dart';
//подтверждение заявки пассажира на поезку
class PassengerAcceptedScreen extends StatelessWidget {
  const PassengerAcceptedScreen({Key? key}) : super(key: key);

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
                'Заявка успешно подтвреждена',
                textAlign:TextAlign.center,
                style: handTextStyleGrin,
                overflow: TextOverflow.clip,
                softWrap: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Image.asset('assets/images/navigation.png', height: 220,),
            ),

            const Text(
              'Пасажир добавлен в поездку',
              textAlign:TextAlign.center,
              style: TextStyle(
                  color: textActiveColor,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: ProceedButton(text: 'ПРОДОЛЖИТЬ',
                press: () => Navigator.of(context).pushNamed(Screens.main),
                color: primaryColor,),
            ),

          ],
        ),
      ),
    );
  }
}
