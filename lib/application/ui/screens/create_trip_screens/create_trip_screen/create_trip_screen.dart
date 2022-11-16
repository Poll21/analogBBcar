import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/head_screen_widget.dart';
import '../../../widget/proceed_button.dart';
//страница создания  новой поездки
class CreateTripScreen extends StatelessWidget {
  const CreateTripScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadScreenWidget(
              title: 'Создать поездку',
              height: 200,
              topPadding: 87,
              press: () => Navigator.of(context).pushNamed(Screens.carProfile)),
          const TimeTrip(title: 'Время отправления',),
          const TimeTrip(title:'Время прибытия'),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 50),
            child: ProceedButton(
              text: 'ПОДТВЕРДИТЬ',
              press: () => Navigator.of(context).pushNamed(Screens.driverProfile),
              color: primaryColor,),
          ),
        ],
      ),
    );
  }
}

class TimeTrip extends StatelessWidget {
  final String title;
  const TimeTrip({Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 16),
      child: Column(
        children: [
          SizedBox(
            height: 21,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: textActiveColor,
                    )),
                const Text('*',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: errorColor,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const SizedBox(
            height: 42,
            child: TextField(
                cursorColor: borderTextField,
                // controller: nameController,
                style: TextStyle(
                  color: textPassiveColor,
                  fontSize: 14.57,
                  fontFamily: 'Montserrat_Medium',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 35),
                  suffixIcon:
                  Icon(Icons.date_range_sharp, size: 20),
                  prefixIconColor: textPassiveColor,

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderTextField, width: 1.04),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: borderTextField, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),

                )),
          ),
        ],

      ),
    );
  }
}
