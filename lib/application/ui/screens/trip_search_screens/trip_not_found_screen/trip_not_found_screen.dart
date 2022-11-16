import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/head_screen_widget.dart';
import '../../../widget/proceed_button.dart';

class TripNotFoundScreen extends StatelessWidget {
  const TripNotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          HeadScreenWidget(
            title: 'Нет поездок',
            height: 200,
            topPadding: 87,
            press: () => Navigator.of(context).pushNamed(Screens.tripSearch),
            ),
          const SizedBox(height: 40),
          Image.asset('assets/images/trip_not_found.png', height: 194,),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text('Попробуйте изменить параметры поиска',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: textPassiveColor,
                )),
          ),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ProceedButton(
              text: 'НАЙТИ ПОЕЗДКУ',
              press: () => Navigator.of(context).pushNamed(Screens.tripFound),
              color: primaryColor,),
          ),
        ],
      ),
    );
  }
}
