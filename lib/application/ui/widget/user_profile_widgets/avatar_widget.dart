import 'package:analoguebbcars/application/data/data_user/data_user.dart';
import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:flutter/material.dart';

//виджет аватарки
class AvatarWidget extends StatelessWidget {
  final int idUser;
  const AvatarWidget({Key? key, required this.idUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _avatar = listDataUser[idUser].avatarUser;
    return CircleAvatar(
      backgroundColor: backGroundAvatarColor,
      radius: 20,
      child: _avatar,
    );
  }
}