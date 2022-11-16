import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../generate/my_flutter_app_icons.dart';
import '../../../navigation/main_navigation.dart';
import '../../profile_screen/profile_screen.dart';

class TripSearchScreen extends StatefulWidget {
  const TripSearchScreen({Key? key}) : super(key: key);

  @override
  State<TripSearchScreen> createState() => _TripSearchScreenState();
}

class _TripSearchScreenState extends State<TripSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 50),
          child: Column(
            children: [
              Image.asset(
                'assets/images/trip_search.png',
                height: 176,
              ),
              const SizedBox(
                height: 7,
              ),
              const TripSearchCard(),
              const SizedBox(
                height: 20,
              ),
             // const PassiveSearch(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Text('Активные поиски', style: TextStyle(
                      color: textPassiveColor,
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700),),
                  //переделать в кнопку
                  Text('ЗАКРЫТЬ ВСЕ', style: TextStyle(
                      color: errorColor,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  children: const [
                    TripeCard(
                      icon: UiIcons.noun,
                      departure: 'Москва',
                      destination: 'Выкса',
                      data: 'Сегодня',),
                    TripeCard(
                      icon: UiIcons.delivery,
                      departure: 'Барнаул',
                      destination: 'Новосибирск',
                      data: 'Завтра',),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TripSearchCard extends StatelessWidget {
  const TripSearchCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 340,
      child: Card(
        elevation: 0,
        color: backGroundColor,
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 27, left: 27, top: 17),
                    child: TextField(
                      cursorColor: textPassiveColor,
                      style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 0, vertical: 9),
                          hintText: 'Откуда',
                          hintStyle: const TextStyle(
                            color: textPassiveColor,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          prefixIcon: const Icon(
                            UiIcons.geolocation,
                            color: textPassiveColor,
                            size: 18,
                          ),
                          prefixIconConstraints:
                              BoxConstraints.tight(const Size(17, 17))),
                    )),
                Padding(
                    padding: const EdgeInsets.only(right: 27, left: 27, top: 17),
                    child: TextField(
                      cursorColor: textPassiveColor,
                      style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 0, vertical: 9),
                          hintText: 'Куда',
                          hintStyle: const TextStyle(
                            color: textPassiveColor,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          prefixIcon: const Icon(
                            UiIcons.geolocation,
                            color: textPassiveColor,
                            size: 18,
                          ),
                          prefixIconConstraints:
                              BoxConstraints.tight(const Size(17, 17))),
                    )),
                Padding(
                    padding: const EdgeInsets.only(right: 27, left: 27, top: 17),
                    child: TextField(
                      cursorColor: textPassiveColor,
                      style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 0, vertical: 9),
                          hintText: 'Сегодня',
                          hintStyle: const TextStyle(
                            color: textPassiveColor,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: textPassiveColor,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.event,
                            color: textPassiveColor,
                            size: 18,
                          ),
                          prefixIconConstraints:
                              BoxConstraints.tight(const Size(17, 17))),
                    )),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    ServiceCard(
                      icon: UiIcons.vector__1_,
                      backColor: notSelectedPhoto,
                      iconColor: primaryColor,
                    ),
                    ServiceCard(
                      icon: UiIcons.noun_delivery,
                      backColor: backGroundColor,
                      iconColor: textPassiveColor,
                    ),
                    ServiceCard(
                      icon: UiIcons.delivery,
                      backColor: backGroundColor,
                      iconColor: textPassiveColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          //const SizedBox(height: 12,),
          Container(
            height: 45,
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15))),
            child: InkWell(
              onTap: ()=>
                {Navigator.of(context).pushNamed(Screens.tripNotFound)},
              child: const Center(child: Text('ПОИСК', style: cardText)),
            ),
          )
        ]),
      ),
    );
  }
}

class PassiveSearch extends StatelessWidget {
  const PassiveSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Image.asset(
        'assets/images/search_location.png',
        height: 100,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Text('Здесь будет отображаться список ваших поисков',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: textActiveColor,
            )),
      ),
      ]
    );
  }
}

class TripeCard extends StatelessWidget {
  final IconData icon;
  final String departure, destination, data;
  const TripeCard({
    Key? key,
    required this.icon,
    required this.departure,
    required this.destination,
    required this.data,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 87,
        child: Card(
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          color: backGroundColor,
          shadowColor: textPassiveColor,
          elevation: 1.5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(icon, color: primaryColor, size: 16),
                    InkWell(
                        child: const Icon(Icons.cancel, size: 16,),
                      onTap: () {},
                    )
                  ],
                ),
                const SizedBox(height: 13,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Icon(UiIcons.number, size: 16,),
                    const SizedBox(width: 8,),
                    Text(data, style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),)
                  ],
                ),
                const SizedBox(height: 13,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(UiIcons.geolocation, size: 16,color: iconDepColor,),
                    ),
                    Text(departure , style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),),
                    const Expanded(
                      child: Center(
                        child: Text('----------', style: TextStyle(
                            color: textPassiveColor,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600),),
                      ),
                    ),
                    Text(destination, style: const TextStyle(
                        color: textPassiveColor,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600),),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(UiIcons.geolocation, size: 16, color: iconDestColor,),
                    ),
                  ],
                )
              ],
            ),
          )
        )
    );
  }
}
