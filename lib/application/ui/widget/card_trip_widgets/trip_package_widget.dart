import 'package:analoguebbcars/application/data/data_trip/data_trip.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';

//отображает наличие посылок
class TripPackageWidget extends StatelessWidget {
  final DataTrip tripList;
  const TripPackageWidget({Key? key, required this.tripList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (tripList.package == false || tripList.packageId.isEmpty) {
      return const Text(
        'Нет посылок',
        style: TextStyle(
            color: iconDepColor,
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600),
      );
    }
    return const Text(
      'Посылка',
      style: TextStyle(
          color: primaryColor,
          fontSize: 14,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600),
    );
  }
}