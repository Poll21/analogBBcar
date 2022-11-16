import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../generate/my_flutter_app_icons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 34, top: 76, bottom: 28),
                child: Icon(
                  UiIcons.vector_2,
                  size: 40,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 85,
            backgroundColor: notSelectedPhoto,
            child: Image.asset(
              'assets/images/photo.png',
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Ирина',
            style: TextStyle(
              color: textActiveColor,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Expanded(
            child: ListView(
              children: [
                const ContactsProfile(),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    DriversProfile(
                      icon: UiIcons.vector__1_,
                      backColor: notSelectedPhoto,
                      iconColor: primaryColor,
                      reviewBackColor: favouriteColor,
                      review: 10,
                    ),
                    DriversProfile(
                      icon: UiIcons.noun_delivery,
                      backColor: backGroundColor,
                      iconColor: textPassiveColor,
                      reviewBackColor: errorColor,
                      review: 6,
                    ),
                    DriversProfile(
                      icon: UiIcons.delivery,
                      backColor: backGroundColor,
                      iconColor: textPassiveColor,
                      reviewBackColor: deliveryColor,
                      review: 6,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    DriveWidget(
                      icon: UiIcons.grouptrip,
                      iconColor: primaryColor,
                      review: 20,
                      iconBlockColor: errorColor,
                    ),
                    DriveWidget(
                      icon: UiIcons.vector_5,
                      iconColor: selectedColor,
                      review: 8,
                      iconBlockColor: notColor,
                    ),
                    DriveWidget(
                      icon: UiIcons.grouptrip,
                      iconColor: primaryColor,
                      review: 10,
                      iconBlockColor: notColor,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 32,
                    bottom: 14,
                  ),
                  child: Text(
                    'Общий рейтинг',
                    style: TextStyle(
                      color: textActiveColor,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const OverallRating(),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 24,
                    bottom: 27,
                  ),
                  child: Text(
                    'Последние поездки:',
                    style: TextStyle(
                      color: textActiveColor,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const NotReviewWidget(),
                const ReviewWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class ContactsProfile extends StatelessWidget {
  const ContactsProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 154,
      child: Card(
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        color: backGroundColor,
        shadowColor: textPassiveColor,
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.phone),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      '+7 167 278 738',
                      style: TextStyle(
                        color: textActiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                child: Container(
                  height: 1,
                  color: borderTextField,
                ),
              ),
              Row(
                children: const [
                  Icon(Icons.mail),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      'qqqqq@mail.ru',
                      style: TextStyle(
                        color: textActiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                child: Container(
                  height: 1,
                  color: borderTextField,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    UiIcons.vector_4,
                    size: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(
                      'www.google.com',
                      style: TextStyle(
                        color: textActiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  const Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Icon(Icons.insert_link_outlined, size: 24),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DriversProfile extends StatelessWidget {
  final Color backColor, reviewBackColor, iconColor;
  final IconData icon;
  final int review;

  const DriversProfile(
      {Key? key,
      required this.backColor,
      required this.reviewBackColor,
      required this.iconColor,
      required this.icon,
      required this.review})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.topEnd, children: [
      ServiceCard(backColor: backColor, iconColor: iconColor, icon: icon),
      CircleAvatar(
        radius: 12,
        backgroundColor: reviewBackColor,
        child: Center(
          child: Text(
            '$review',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              letterSpacing: -1.04,
            ),
          ),
        ),
      ),
    ]);
  }
}

class ServiceCard extends StatelessWidget {
  final Color backColor, iconColor;
  final IconData icon;
  const ServiceCard({
    Key? key,
    required this.backColor,
    required this.iconColor,
    required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 79,
        width: 87,
        child: Card(
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          color: backColor,
          shadowColor: textPassiveColor,
          elevation: 1.5,
          child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 19),
              child: Icon(
                icon,
                size: 39,
                color: iconColor,
              )),
        ));
  }
}


class DriveWidget extends StatelessWidget {
  final Color iconColor, iconBlockColor;
  final IconData icon;
  final int review;

  const DriveWidget({
    Key? key,
    required this.iconColor,
    required this.icon,
    required this.review,
    required this.iconBlockColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(alignment: Alignment.centerLeft, children: [
          Icon(
            icon,
            size: 20,
            color: iconColor,
          ),
          Icon(
            Icons.block_sharp,
            size: 30,
            color: iconBlockColor,
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            '$review',
            style: const TextStyle(
              color: textActiveColor,
              fontSize: 32,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}

class OverallRating extends StatelessWidget {
  const OverallRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.star,
          size: 22,
          color: primaryColor,
        ),
        Padding(
          padding: EdgeInsets.only(left: 7, right: 16),
          child: Text(
            '3.75/5',
            style: TextStyle(
              color: primaryColor,
              fontSize: 32,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Text(
          '5 оценок',
          style: TextStyle(
            color: textPassiveColor,
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class NotReviewWidget extends StatelessWidget {
  const NotReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Image.asset('assets/images/review_star.png', height: 94,),
          const Padding(
            padding: EdgeInsets.only(top: 19, bottom: 16),
            child: Text(
              'Вам пока не оставили отзыв',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
      ],
    );
  }
}

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Card(
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        color: backGroundColor,
        shadowColor: textPassiveColor,
        elevation: 1.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: notSelectedPhoto,
                child: Image.asset(
                  'assets/images/photo.png',
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Игорь', style: TextStyle(
                    fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    color: textActiveColor
                      ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: const [
                        Icon(Icons.star, size: 16, color: selectedColor,),
                        Icon(Icons.star, size: 16, color: selectedColor,),
                        Icon(Icons.star, size: 16, color: textPassiveColor,),
                        Icon(Icons.star, size: 16, color: textPassiveColor,),
                        Icon(Icons.star, size: 16, color: textPassiveColor,),
                      ],
                    ),
                  ),
                  const Text('Комфортное вождение', style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      color: textPassiveColor
                  ),),
                ],
              ),
              const Text('24.02.22', style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  color: textPassiveColor
              ),),
            ],
          ),
        ),
      ),
    );
  }
}


