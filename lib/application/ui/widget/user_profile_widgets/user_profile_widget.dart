//отображает информацию о пользователе
import 'package:analoguebbcars/application/data/data_user/data_user.dart';
import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:flutter/material.dart';

class UserNameWidget extends StatelessWidget {
  final int idUser;
  const UserNameWidget({Key? key, required this.idUser,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      listDataUser[idUser].nameUser,
      style: const TextStyle(
          color: textActiveColor,
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600),
    );
  }
}

class UserPhoneWidget extends StatelessWidget {
  final int idUser;
  const UserPhoneWidget({Key? key, required this.idUser,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.phone,
          size: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            listDataUser[idUser].phoneUser.toString(),
            style: const TextStyle(
                color: textPassiveColor,
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

class UserRatingWidget extends StatelessWidget {
  final int idUser;
  const UserRatingWidget({Key? key, required this.idUser,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _rating = listDataUser[idUser].ratingUser.toString();
    final _review = listDataUser[idUser].reviewUser.toString();
    return Row(
      children: [
        const Icon(
          Icons.star,
          size: 15,
        ),
        Text(
          '$_rating/$_review',
          style: const TextStyle(
              color: textPassiveColor,
              fontSize: 14,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}