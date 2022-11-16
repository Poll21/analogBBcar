import 'package:analoguebbcars/application/data/data_trip/data_trip.dart';
import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/application/ui/widget/user_profile_widgets/avatar_widget.dart';
import 'package:flutter/material.dart';
//отображает аватарки пассажиров поездки
class PassengersAvatarsWidget extends StatelessWidget {
  final DataTrip tripList;

  const PassengersAvatarsWidget({Key? key, required this.tripList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _listPassengerAvatars = tripList.passengers
        .map((int e) => AvatarWidget(
      idUser: e,
    ))
        .toList();
    // ignore: prefer_is_empty
    if (tripList.passengers.length == 0) {
      return const Text(
        'Нет попутчиков',
        style: TextStyle(
            color: iconDepColor,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600),
      );
    }
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _listPassengerAvatars,
    );
  }
}