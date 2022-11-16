import 'package:analoguebbcars/application/ui/widget/trip_widgets/transmittal_letter_widget.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'user_profile_widgets/avatar_widget.dart';
import 'user_profile_widgets/user_profile_widget.dart';
// отображает карту перевозчика
class CardFoCarrierWidget extends StatelessWidget {
  final int idUser;
  const CardFoCarrierWidget({Key? key, required this.idUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      color: backGroundColor,
      shadowColor: textPassiveColor,
      elevation: 1.5,
      child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 12),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: AvatarWidget(idUser: idUser),
                  ),
//отображание данных перевозчика
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UserNameWidget(idUser: idUser),
                      const SizedBox(height: 5),
                      UserPhoneWidget(idUser: idUser),
                      const SizedBox(height: 5),
                      UserRatingWidget(idUser: idUser),
                    ],
                  ),
//отображание данных  автомобиля перевозчика
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserNameWidget(idUser: idUser),
                  const SizedBox(height: 5),
                  UserPhoneWidget(idUser: idUser),
                  const SizedBox(height: 5),
                  UserRatingWidget(idUser: idUser),

                ],
              )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Image.asset('assets/images/horizontal.png'),
              ),
//отображает сопроводительное письмо переревозчика
              const TransmittalLetterWidget(idTrip: 1),
            ],
          )
      ),
    );
  }
}