import 'package:analoguebbcars/application/data/data_trip/data_trip.dart';
import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/application/ui/generate/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

//виджет отображающий стоимость поездки
class TripPriceWidget extends StatelessWidget {
  final DataTrip tripList;

  const TripPriceWidget({Key? key, required this.tripList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _priceTrip = tripList.priceTrip;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '$_priceTrip',
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
      ],
    );
  }
}