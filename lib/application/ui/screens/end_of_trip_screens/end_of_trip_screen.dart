import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../navigation/main_navigation.dart';
import '../../widget/proceed_button.dart';
import '../../widget/trip_widgets/list_passangers_trip_widget.dart';
//страница окончания поездки
class EndOfTripCarrierScreen extends StatelessWidget {
  const EndOfTripCarrierScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int _idTrip = 0;//изменить входной параметр
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 265,
            width: MediaQuery.of(context).size.width,
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 60),
              child: Column(
                children: const [
                  Text(
                    'ПОЕЗДКА ЗАКОНЧИЛАСЬ, ОСТАВЬТЕ ОТЗЫВ',
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    style: TextStyle(
                      color: backGroundColor,
                      fontSize: 30,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -1.04,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Оставьте хотя бы один отзыв, чтобы продолжить',
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: backGroundColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.72,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 24),
              child: Text(
                'ПАССАЖИРЫ:',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: textActiveColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.72,
                ),
              )
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
//отображает список пассажиров
              child: ListView(
                children: [
                  ListPassangersTripCarrier(idTrip: _idTrip, onTap: () =>
                      Navigator.of(context)
                          .pushNamed(Screens.leaveFeedbackAboutCarrie),),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 58),
            child: ProceedButton(
              press: () =>
                  Navigator.of(context).pushNamed(Screens.main),
              color:primaryColor,
              text: 'ПРОДОЛЖИТЬ',),
          )

        ],
      ),
    );
  }
}
