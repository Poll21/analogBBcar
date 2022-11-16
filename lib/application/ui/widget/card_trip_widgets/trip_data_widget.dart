import 'package:analoguebbcars/application/data/data_trip/data_trip.dart';
import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/application/ui/generate/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

//виджет отображающий дату поездки
class TripDataWidget extends StatelessWidget {
  final DataTrip tripList;

  const TripDataWidget({Key? key, required this.tripList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          UiIcons.number,
          size: 15,
          color: textActiveColor,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          tripList.dateTrip,
          style: const TextStyle(
              color: textPassiveColor,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}