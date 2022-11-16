//жалоба на пассажира
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../navigation/main_navigation.dart';
import '../../widget/head_screen_widget.dart';
import '../../widget/proceed_button.dart';

class ComplaintScreen extends StatelessWidget {
  const ComplaintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadScreenWidget(
              title: 'Отправить  жалобу',
              height: 200,
              topPadding: 87,
              press: () =>
                  Navigator.of(context).pushNamed(Screens.passengerException)),
          Expanded(
              child: ListView(children: const [
                ProceedButtonShou(text: 'Не соответвуют данные',color: badGradeColor,),
                ProceedButtonShou(text: 'Просили отменить поездку',color: badGradeColor,),
                ProceedButtonShou(text: 'Место забронировано пошибке',color: badGradeColor,),
                ProceedButtonShou(text: 'Завышает цену',color: badGradeColor,),
                ProceedButtonShou(text: 'Требует предоплату',color: badGradeColor,),
                ProceedButtonShou(text: 'Долго подтверждение бронирования',color: badGradeColor,),
                ProceedButtonShou(text: 'Мои планы изменились',color: badGradeColor,),
                ProceedButtonShou(text: 'Отказался ехать или изменил условия',color: badGradeColor,),
                ProceedButtonShou(text: 'Не выходит на связь',color: badGradeColor,),
          ],)),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 17, bottom: 58),
            child: ProceedButton(
              text: 'ОТПРАВИТЬ ЖАЛОБУ',
              color: errorColor,
              press: () =>
                  Navigator.of(context).pushNamed(Screens.complaintSent)),
          )
        ],
      ),
    );
  }
}
