import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/head_screen_widget.dart';
import '../../../widget/proceed_button.dart';
import '../../../widget/textField_prefixIcon_widget.dart';


class DriverProfileScreen extends StatelessWidget {
  const DriverProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadScreenWidget(
              title: 'Профиль водителя',
              height: 200,
              topPadding: 87,
              press: () => Navigator.of(context).pushNamed(Screens.createTrip)),
          const SizedBox(
            height: 25,
          ),
          const TextFieldPrefixIcon(title: 'Водительский стаж'),

          Padding(
            padding: const EdgeInsets.only(
                left: 25, right: 25, top: 8, bottom: 12),
            child: SizedBox(
              height: 21,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('Выберите автомобиль',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: textActiveColor,
                      )),
                  Text('*',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: errorColor,
                      )),
                ],
              ),
            ),),

          const CarCardWidget(),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 10,),
            child: ProceedButton(
              text: '+  ДОБАВИТЬ АВТО',
              press: () => Navigator.of(context).pushNamed(Screens.carProfile),
              color: primaryColor,),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 47),
            child: ProceedButton(
              text: 'ПОДТВЕРДИТЬ',
              press: () =>
                  Navigator.of(context).pushNamed(Screens.driverAdditionalOptions),
              color: primaryColor,),
          ),
        ],
      ),
    );
  }
}

class CarCardWidget extends StatelessWidget {
  const CarCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 12),
      child: Card(
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        color: backGroundColor,
        shadowColor: textPassiveColor,
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 9),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 1, right: 11),
                width: 109,
                height: 61,
                child: Image.asset(
                  'assets/images/car.png',
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text('Toyota Matrix', style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: textActiveColor
                  ),),
                  Text('NUC55142', style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      color: textPassiveColor
                  ),),
                  Text('Красный', style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      color: textPassiveColor
                  ),),
                ],
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(right: 9),
                child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.cancel_sharp,
                    size: 18,
                    color: textPassiveColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}





