import 'package:analoguebbcars/application/ui/screens/travel_requests_screens/travel_requests_screen/travel_requests_screen.dart';
import 'package:analoguebbcars/application/ui/widget/proceed_button.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/head_screen_widget.dart';


class TravelRequestDetailScreen extends StatelessWidget {
  const TravelRequestDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadScreenWidget(
              title: 'Пассажир',
              topPadding: 87,
              height: 200,
              press: () =>
                  Navigator.of(context).pushNamed(Screens.travelRequests)),
          //текст зависит от типа запроса
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: PassengerInformationDetailWidget(
                allTrips: passengerInformation[0],
                icon: passengerInformation[0],
                name: passengerInformation[0],
                avatar: passengerInformation[0],
                phone: passengerInformation[0],
                review: passengerInformation[0],
                rating: passengerInformation[0],
                transmittalLetter: passengerInformation[0],
              ),
            ),
          ),
          const SizedBox(height: 24),
          ProceedButton(
            text: 'Подтвердить',
            press: () =>
                Navigator.of(context).pushNamed(Screens.travelPassengerAccepted),
            color: primaryColor,
          ),
          const SizedBox(height: 24),
          ProceedButton(
            text: 'Отказать',
            press: () => //при переходе должен отробатыватся отказ
                Navigator.of(context).pushNamed(Screens.travelRequests),
            color: errorColor,
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}

class PassengerInformationDetailWidget extends StatelessWidget {
  final PassengerInformation icon,
      name,
      transmittalLetter,
      phone,
      avatar,
      review,
      allTrips,
      rating;

  const PassengerInformationDetailWidget(
      {Key? key,
      required this.icon,
      required this.name,
      required this.transmittalLetter,
      required this.phone,
      required this.review,
      required this.rating,
      required this.avatar,
      required this.allTrips})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        color: backGroundColor,
        shadowColor: textPassiveColor,
        elevation: 1.5,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PassengerProfileWidget(
                    avatar: avatar.avatar,
                    name: name.name,
                    phone: phone.phone,
                    rating: rating.rating,
                    review: review.review,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  AllTrips(
                    allTrips: allTrips.allTrips,
                  )
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Сопроводительное письмо:',
                style: TextStyle(
                    color: textActiveColor,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                 decoration: const BoxDecoration(
                     color:backgroundColorTextField,
                   borderRadius: BorderRadius.all(Radius.circular(4))
                 ),
                  child: Text(
                    transmittalLetter.transmittalLetter,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: textActiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ])));
  }
}

class AllTrips extends StatelessWidget {
  final int allTrips;

  const AllTrips({Key? key, required this.allTrips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Всего поездок:',
            style: TextStyle(
                color: errorColor,
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
          Text(
            '$allTrips',
            style: const TextStyle(
                color: errorColor,
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
