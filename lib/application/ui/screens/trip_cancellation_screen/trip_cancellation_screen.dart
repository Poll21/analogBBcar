import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../navigation/main_navigation.dart';
import '../../widget/head_screen_widget.dart';
import '../../widget/proceed_button.dart';

class TripCancellationScreen extends StatelessWidget {
  const TripCancellationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeadScreenWidget(
              title: 'Укажите причину отмены',
              height: 200, topPadding: 70,
              press: () =>
                  Navigator.of(context).pushNamed(Screens.travelTripCarrier)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Text(
               'Чтобы продолжить, выберете хотя бы одну причину отмены бронирования',
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
          Expanded(
              child: ListView(
                children: const [
                  ProceedButtonShou(text: 'Не соответвуют данные',color: primaryColor,),
                  ProceedButtonShou(text: 'Просили отменить поездку',color: primaryColor,),
                  ProceedButtonShou(text: 'Место забронировано пошибке',color: primaryColor,),
                  ProceedButtonShou(text: 'Завышает цену',color: primaryColor,),
                  ProceedButtonShou(text: 'Требует предоплату',color: primaryColor,),
                  ProceedButtonShou(text: 'Долго подтверждение бронирования',color: primaryColor,),
                  ProceedButtonShou(text: 'Мои планы изменились',color: primaryColor,),
                  ProceedButtonShou(text: 'Отказался ехать или изменил условия',color: primaryColor,),
                  ProceedButtonShou(text: 'Не выходит на связь',color: primaryColor,),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25,bottom: 58),
            child: ProceedButton(
              press: () =>
                  Navigator.of(context).pushNamed(Screens.travelTripCancellationLast),
              color:primaryColor,
              text: 'Продолжить',),
          )

        ],
      ),
    );
  }
}
