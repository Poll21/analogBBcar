import 'package:analoguebbcars/application/data/data_trip/data_trip.dart';
import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/application/ui/navigation/main_navigation.dart';
import 'package:analoguebbcars/application/ui/widget/card_fo_carrier_widget.dart';
import 'package:analoguebbcars/application/ui/widget/card_trip_widgets/trip_price_widget.dart';
import 'package:analoguebbcars/application/ui/widget/card_trip_widgets/trip_time_widget.dart';
import 'package:analoguebbcars/application/ui/widget/head_screen_widget.dart';
import 'package:analoguebbcars/application/ui/widget/proceed_button.dart';
import 'package:analoguebbcars/application/ui/widget/trip_widgets/list_passangers_trip_widget.dart';
import 'package:analoguebbcars/application/ux/factory/trip_additional_factory/trip_additional_factory.dart';
import 'package:flutter/material.dart';
import '../../../widget/card_trip_widgets/trip_data_widget.dart';

//Экран Поезки пасажира
class TripScreenPassenger extends StatelessWidget {
  const TripScreenPassenger({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int _idTrip = 0;
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start, children: [
              HeadScreenWidget(
                title: 'Детали поездки', height: 150, topPadding: 70,
          press: () => Navigator.of(context).pushNamed(Screens.main)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(height: 60,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),)),
                          backgroundColor: MaterialStateProperty.all<Color>(errorColor),
                          elevation: MaterialStateProperty.all<double>(0),
                        ),
//добавить ссылку
                        onPressed: () {},
                        child: const Text('Отменить бронирование',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: backGroundColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.72,),
                        ),
                      ),
                    ),
                    SizedBox(height: 60,
                      child: ElevatedButton(
//дотавить функцию
                        onPressed: () {},
                        // ignore: sort_child_properties_last
                        child: const Icon(Icons.announcement_rounded),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.
                          all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )
                          ),
                          backgroundColor:
                          MaterialStateProperty.all<Color>(iconDestColor),
                          elevation: MaterialStateProperty.all<double>(0),
                         ),
                        ),
                      )
                    ],
                ),
            ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
//отображает список пассажиров
                  child: ListPassangersTrip(idTrip: _idTrip,),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text('ВОДИТЕЛЬ',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: textActiveColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
//карта перевозчика
                  child: CardFoCarrierWidget(idUser: 2),
                ),
              ],
            ),
          ),
          Padding(padding:
          const EdgeInsets.only(left: 25, right: 25, top: 24, bottom: 59),
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
        ]
        )
    );
  }
}