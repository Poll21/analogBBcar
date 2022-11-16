import 'package:analoguebbcars/application/ui/widget/card_trip_widgets/Info_trip_widget.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../navigation/main_navigation.dart';


//карта общей информации о поезке
class CardActiveTravelWidget extends StatelessWidget {
  final int tripIndex;
  const CardActiveTravelWidget({Key? key, required this.tripIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
          onTap: () => Navigator.of(context).pushNamed(Screens.travelTripCarrier),
          child: Card(
            shape: const RoundedRectangleBorder(
                side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            color: backGroundColor,
            shadowColor: textPassiveColor,
            elevation: 1.5,
            child:
            //содержание карты для водителя
            //InfoTripForCarrierWidget(tripIndex: tripIndex),
            //содержание карты для пассажыра
             InfoTripForPassenger(request: true, tripIndex: tripIndex,)
          )),
    );
  }
}