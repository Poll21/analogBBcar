//Все заявки на поездку от пассажиром

import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../generate/my_flutter_app_icons.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/head_screen_widget.dart';

class TravelRequestsScreen extends StatelessWidget {
  const TravelRequestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadScreenWidget(
              title: 'Заявки на поездку',
              height: 200,
              topPadding: 87,
              press: () {}),
          Expanded(child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 25),
            child: PassengerInformationWidget(passengerInformation: passengerInformation,),
          )),

        ],
      ),
    );
  }
}

//Класс хранящий информацию о пассажире
class PassengerInformation{
  final IconData icon;
  final String name, transmittalLetter, phone, avatar;
  final int review, allTrips;
  final double rating;

  const PassengerInformation( {
    required this.name,     //имя пользователя
    required this.avatar,   //фото пользователя
    required this.phone,    //Телефон
    required this.review,   //колличество отзывов
    required this.rating,   //рейтинг
    required this.allTrips, //число поездок
    required this.icon,     //иконка вида запроса(поездка, посылка)
    required this.transmittalLetter,//сопроводительное письмо


  });
}

final List<PassengerInformation> passengerInformation = [
  const PassengerInformation(
      avatar: 'assets/images/photo.png',
      icon: UiIcons.noun_delivery,
      name: 'Анна',
      transmittalLetter: 'Здравствуйте. Еду Смоленск-Москва в среду. '
          'С собой багаж и кот. Без вредных привычек. Спасибо',
      phone: '+7 923 678 45 79',
      review: 5, rating: 4.5,
      allTrips: 5,),
  const PassengerInformation(
    avatar: 'assets/images/photo.png',
    icon: UiIcons.delivery,
    name: 'Федя',
    transmittalLetter: 'Здравствуйте. '
        'Нужно доставить чемодан в другой город. Получиться? ',
    phone: '+7 923 678 45 55',
    review: 5, rating: 5,
    allTrips: 0,)
];

class PassengerInformationWidget extends StatelessWidget {
  final List<PassengerInformation> passengerInformation;

  const PassengerInformationWidget({
    Key? key, required this.passengerInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> passengerInformationList = passengerInformation
        .map((PassengerInformation passengerInformation)=>
        CardPassengerInformationWidget(
          icon: passengerInformation,
          avatar: passengerInformation,
          allTrips: passengerInformation,
          transmittalLetter: passengerInformation,
          phone: passengerInformation,
          review: passengerInformation,
          name: passengerInformation,
          rating: passengerInformation,
        )) .toList();
    return ListView(
      children:
        passengerInformationList
      ,
    );
  }
}

class CardPassengerInformationWidget extends StatelessWidget {
  final PassengerInformation icon,
   name, transmittalLetter, phone, avatar,
  review,  allTrips,
  rating;

  const CardPassengerInformationWidget({
    Key? key,
    required this.icon,
    required this.name,
    required this.transmittalLetter,
    required this.phone,
    required this.review,
    required this.rating,
    required this.avatar,
    required this.allTrips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () =>
            Navigator.of(context).pushNamed(Screens.travelRequestDetail),
        child: Card(
            shape: const RoundedRectangleBorder(
                side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            color: backGroundColor,
            shadowColor: textPassiveColor,
            elevation: 1.5,
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 12),
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
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(icon.icon, color: primaryColor,size: 24,),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18,),
                  Text(transmittalLetter.transmittalLetter,
                    maxLines: 4,
                      overflow:TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: textActiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),)

                ])
            )));
  }
}

class PassengerProfileWidget extends StatelessWidget {
  
  final String avatar, name, phone;
  final int review;
  final double rating;

  const PassengerProfileWidget(
      {Key? key,
        required this.avatar,
        required this.name,
        required this.review,
        required this.rating,
        required this.phone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: notSelectedPhoto,
          child: Image.asset(
            avatar,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: textActiveColor,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 5),
            Row(
              children: [
                const Icon(
                  Icons.phone,
                  size: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    phone,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 15,
                ),
                Text(
                  '$rating/$review',
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}