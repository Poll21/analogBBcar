import 'package:analoguebbcars/application/data/data_trip/data_trip.dart';
import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/application/ui/widget/user_profile_widgets/avatar_widget.dart';
import 'package:flutter/material.dart';

//отображает аватарки заявителей на поездку
class RequestsAvatarsWidget extends StatelessWidget {
  final DataTrip tripList;

  const RequestsAvatarsWidget({Key? key, required this.tripList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _listPassengerAvatars = tripList.travelRequests
        .map((int e) => AvatarWidget(  //виджет аватарки
      idUser: e,
    ))
        .toList();
    // ignore: prefer_is_empty
    if (tripList.travelRequests.length == 0) {
      return const Text(
        'Нет заявок',
        style: TextStyle(
            color: iconDepColor,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600),
      );
    } else {
      if (tripList.passengers.length == tripList.vacancies) {
        return const Text(
          'Нет свободных мест',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: iconDepColor,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600),
        );
      }
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _listPassengerAvatars,
    );
  }
}