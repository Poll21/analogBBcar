import 'package:analoguebbcars/application/data/data_trip/data_trip.dart';
import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/application/ui/navigation/main_navigation.dart';
import 'package:analoguebbcars/application/ui/widget/card_trip_widgets/trip_price_widget.dart';
import 'package:analoguebbcars/application/ui/widget/card_trip_widgets/trip_time_widget.dart';
import 'package:analoguebbcars/application/ui/widget/head_screen_widget.dart';
import 'package:analoguebbcars/application/ui/widget/proceed_button.dart';
import 'package:flutter/material.dart';
import '../../../../ux/factory/trip_additional_factory/trip_additional_factory.dart';
import '../../../widget/card_trip_widgets/trip_data_widget.dart';
import '../../../widget/trip_widgets/list_passangers_trip_widget.dart';

//Экран Поезки для перевозчика
class TripScreenCarrier extends StatelessWidget {
  const TripScreenCarrier({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int _idTrip = 0;
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadScreenWidget(
                  title: 'Детали поездки',
                  height: 150, topPadding: 70,
                  press: () =>
                      Navigator.of(context).pushNamed(Screens.main)),

              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
                child: SizedBox(height: 40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),)),
                      backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                      elevation: MaterialStateProperty.all<double>(0),
                    ),
//добавить ссылку
                    onPressed: () =>
                        Navigator.of(context).pushNamed(Screens.endOfTripCarrier),
                    child: const Center(
                      child: Text('Завершить поездку',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: backGroundColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.72,),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
                child: SizedBox(height: 30,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),)),
                      backgroundColor: MaterialStateProperty.all<Color>(errorColor),
                      elevation: MaterialStateProperty.all<double>(0),
                    ),
//добавить ссылку
                    onPressed: () =>
                        Navigator.of(context).pushNamed(Screens.travelTripCancellation),
                    child: const Center(
                      child: Text('Отменить поездку',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: backGroundColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.72,),
                      ),
                    ),
                  ),
                ),
              ),

          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  child: Card(
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    color: backGroundColor,
                    shadowColor: textPassiveColor,
                    elevation: 1.5,
                    child: Padding(padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
//виджет отображающий дату поездки
                                TripDataWidget(tripList: listDataTrip[_idTrip]),
                                const SizedBox(height: 16,),
// виджет отображающий время отправления из пункта отправления
// и время прибытия в пункт назначения
                                TripTimeWidget(tripList: listDataTrip[_idTrip]),
                              ]
                          ),
                          Expanded(child: Container()),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TripPriceWidget(tripList: listDataTrip[_idTrip]),
//виджет отображающий стоимость поездки
                                SizedBox(width: 80,
                                  child: TripAdditionalShortFactory(
                                    tripList: listDataTrip[_idTrip],
                                  ),
                                ),
                              ]
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text('ПАССАЖИРЫ:',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: textActiveColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
//отображает список пассажиров
                  child: ListPassangersTripCarrier(
                    idTrip: _idTrip,
                    onTap: () =>
                        Navigator.of(context)
                            .pushNamed(Screens.passengerException)
                )),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 10),
                  child: Text('ОТПРАВИТЕЛИ ПОСЫЛОК:',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: textActiveColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
//отображает список отправителей посылок
                  child: ListPackageTripCarrier(idTrip: _idTrip,),
                ),
              ],
            ),
          ),
          Padding(padding:
          const EdgeInsets.only(left: 25, right: 25, top: 24, bottom: 59),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      ProceedButton(
                          text: 'ЧАТ ПОЕЗДКИ',
                          press: () {},
                          color: primaryColor
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 30, top: 18),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: errorColor,
//отображает количество не прочитонных сщщбщений в чате
                          child: Text('3',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: textActiveColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 16,),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: backGroundAvatarColor,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: primaryColor, width: 3)),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: const [
                        Icon(Icons.person, size: 55, color: primaryColor,),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: errorColor,
//отображает количество не просмотренных заявок напоездку
                      child: Text('3',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: textActiveColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
              ],
            ),
                  ),
                ),
              ],
            ),
          ),
        ]
        )
    );
  }
}