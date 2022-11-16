import 'package:flutter/material.dart';

import '../../../../data/data_trip/data_trip.dart';
import '../../../../ux/factory/trip_additional_factory/trip_additional_factory.dart';
import '../../../constants/constants.dart';
import '../../../generate/my_flutter_app_icons.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/head_screen_widget.dart';

class TripFoundScreen extends StatelessWidget {
  const TripFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadScreenWidget(
              title: 'ПОИСК',
              height: 200,
              topPadding: 87,
              press: () => Navigator.of(context).pushNamed(Screens.tripSearch)),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(children: const [
              TripFoundCard(
                avatar: 'assets/images/photo.png',
                icon: UiIcons.noun,
                departure: 'Москва',
                deptime: '22:33',
                destination: 'Выкса',
                desttime: '03:15',
                data: 'Сегодня',
                tripTime: '22 ч. 38',
                price: 1000,
                vacancies: 3,
                brand: 'BMW',
                name: 'Иван',
                carModel: 'X5',
                review: 5,
                rating: 3.5,
                carNumber: 'Ф345ИА',
              ),
              TripFoundCard(
                avatar: 'assets/images/photo.png',
                icon: UiIcons.noun,
                departure: 'Москва',
                deptime: '22:33',
                destination: 'Выкса',
                desttime: '03:15',
                data: 'Сегодня',
                tripTime: '22 ч. 38',
                price: 1000,
                vacancies: 3,
                brand: 'BMW',
                name: 'Иван',
                carModel: 'X5',
                review: 5,
                rating: 3.5,
                carNumber: 'Ф345ИА',
              ),
            ]),
          )),
        ],
      ),
    );
  }
}

class TripFoundCardModel {
  final IconData icon;
  final String avatar,
      departure,
      destination,
      data,
      deptime,
      desttime,
      tripTime,
      name,
      brand,
      carModel,
      carNumber;
  final int price, vacancies, review;
  final double rating;

  const TripFoundCardModel({
    required this.avatar,
    required this.icon,
    required this.departure,
    required this.destination,
    required this.data,
    required this.deptime,
    required this.desttime,
    required this.tripTime,
    required this.price,
    required this.vacancies,
    required this.name,
    required this.brand,
    required this.carModel,
    required this.review,
    required this.rating,
    required this.carNumber,
  });
}

List<TripFoundCardModel> listTFCM = [
  const TripFoundCardModel(
    avatar: 'assets/images/photo.png',
    icon: UiIcons.noun,
    departure: 'Москва',
    deptime: '22:33',
    destination: 'Выкса',
    desttime: '03:15',
    data: 'Сегодня',
    tripTime: '22 ч. 38',
    price: 1000,
    vacancies: 3,
    brand: 'BMW',
    name: 'Иван',
    carModel: 'X5',
    review: 5,
    rating: 3.5,
    carNumber: 'Ф345ИА',
  )
];

class TripFoundCard extends StatelessWidget {
  final IconData icon;
  final String departure,
      destination,
      data,
      deptime,
      desttime,
      tripTime,
      name,
      brand,
      carModel,
      carNumber,
      avatar;
  final int price, vacancies, review;
  final double rating;

  const TripFoundCard({
    Key? key,
    required this.icon,
    required this.departure,
    required this.destination,
    required this.data,
    required this.deptime,
    required this.desttime,
    required this.tripTime,
    required this.price,
    required this.vacancies,
    required this.name,
    required this.brand,
    required this.carModel,
    required this.review,
    required this.rating,
    required this.carNumber,
    required this.avatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 87,
        child: InkWell(
          onTap: () => Navigator.of(context).pushNamed(Screens.tripDetalFound),
          child: Card(
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              color: backGroundColor,
              shadowColor: textPassiveColor,
              elevation: 1.5,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  children: [
                    TripInfoWidget(
                      desttime: desttime,
                      deptime: deptime,
                      data: data,
                      departure: departure,
                      destination: destination,
                      price: price,
                      tripTime: tripTime,
                    ),
                    const SizedBox(height: 20),
                    CarProfileWidget(
                      carModel: carModel,
                      name: name,
                      review: review,
                      carNumber: carNumber,
                      avatar: avatar,
                      brand: brand,
                      rating: rating,
                    )
                  ],
                ),
              )),
        ));
  }
}

class CarProfileWidget extends StatelessWidget {
  final String avatar, name, brand, carModel, carNumber;
  final int review;
  final double rating;

  const CarProfileWidget(
      {Key? key,
      required this.avatar,
      required this.name,
      required this.brand,
      required this.carModel,
      required this.carNumber,
      required this.review,
      required this.rating})
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
                  UiIcons.vector__1_,
                  size: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    brand,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  carModel,
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
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
        Expanded(
          child: Container(),
        ),
        SizedBox(
          width: 70,
          height: 50,
          child: Expanded(
            child: TripAdditionalShortFactory(tripList: listDataTrip[1]),
          ),
        )
      ],
    );
  }
}

class TripInfoModel {
  final String departure, destination, data, deptime, desttime;
  final int price, vacancies;
  final double experience;

  TripInfoModel({
    required this.experience,
    required this.departure,
    required this.destination,
    required this.data,
    required this.deptime,
    required this.desttime,
    required this.price,
    required this.vacancies,
  });
}

class TripInfoWidget extends StatelessWidget {
  final String departure, destination, data, deptime, desttime, tripTime;

  final int price;

  const TripInfoWidget({
    Key? key,
    required this.departure,
    required this.destination,
    required this.data,
    required this.deptime,
    required this.desttime,
    required this.price,
    required this.tripTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 40,
                  child: Text(
                    deptime,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    UiIcons.geolocation,
                    size: 16,
                    color: iconDepColor,
                  ),
                ),
                Text(
                  departure,
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 45,
                  child: Text(
                    tripTime,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Image.asset(
                  'assets/images/Line.png',
                  height: 35,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                  child: Text(
                    desttime,
                    style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    UiIcons.geolocation,
                    size: 16,
                    color: iconDestColor,
                  ),
                ),
                Text(
                  destination,
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '$price',
                  style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),
                const Icon(
                  UiIcons.ruble_fill0,
                  size: 20,
                  color: textPassiveColor,
                ),
              ],
            ),
            const Vacancies(vacancies: 3),
          ],
        ),
      ],
    );
  }
}

// виджет отображающий свободные места
class Vacancies extends StatelessWidget {
  final int vacancies;

  const Vacancies({Key? key, required this.vacancies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '$vacancies',
          style: const TextStyle(
              color: textPassiveColor,
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500),
        ),
        const Text(
          ' места',
          style: TextStyle(
              color: textPassiveColor,
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
