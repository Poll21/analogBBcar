import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../navigation/main_navigation.dart';
import '../../widget/head_screen_widget.dart';
import '../../widget/proceed_button.dart';
//страница завершения отмены поездки
class TripCancellationLastScreen extends StatelessWidget {
  const TripCancellationLastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeadScreenWidget(
              title: 'Вы точно хотите отметить поездку?',
              height: 200, topPadding: 70,
              press: () =>
                  Navigator.of(context).pushNamed(Screens.travelTripCancellation)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Image.asset('assets/images/location_using.png', ),
          ),
          const Icon(Icons.error, color: errorColor, size: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Text(
                'Вам не будут возвращены деньги за публикацию',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color:errorColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.72,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
            child: ProceedButton(
              press: () =>
                  Navigator.of(context).pushNamed(Screens.endOfTripCarrier),
              color:errorColor,
              text: 'Отменить поездку',),
          )

        ],
      ),
    );
  }
}
