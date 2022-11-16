import 'package:analoguebbcars/application/ui/widget/head_screen_widget.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/proceed_button.dart';
import '../../../widget/switch_option_widget.dart';
//страница создания дополнительных опций автомобиля
class AdditionalOptionsScreen extends StatefulWidget {
  const AdditionalOptionsScreen({Key? key}) : super(key: key);

  @override
  State<AdditionalOptionsScreen> createState() => _AdditionalOptionsScreenState();
}

class _AdditionalOptionsScreenState extends State<AdditionalOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        HeadScreenWidget(
            title: 'Дополнительные опции',
            height: 200,
            topPadding: 87,
            press: () =>
                Navigator.of(context).pushNamed(Screens.driverProfile)),
        const SizedBox(
          height: 44,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            children: const [
              SwitchOptionsWidget(
                title: 'Курение в салоне',
              ),
              SwitchOptionsWidget(
                title: 'Домашние животные',
              ),
              SwitchOptionsWidget(
                title: 'Перевозка багажа',
              ),
              SwitchOptionsWidget(
                title: 'Детское кресло',
              ),
              SwitchOptionsWidget(
                title: 'Употребление пищи в салоне',
              ),
            ],
          ),
        )),
        Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, bottom: 53,),
          child: ProceedButton(
            text: 'ПОДТВЕРДИТЬ',
            press: () => Navigator.of(context).pushNamed(Screens.driverTripData),
            color: primaryColor,),
        ),
      ]),
    );
  }
}

