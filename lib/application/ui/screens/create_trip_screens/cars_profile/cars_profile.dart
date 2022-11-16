import 'package:analoguebbcars/application/ui/widget/head_screen_widget.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../generate/my_flutter_app_icons.dart';
import '../../../navigation/main_navigation.dart';
import '../../../widget/proceed_button.dart';
// страниза добавления автомобиля перевозчика
class CarsProfileScreen extends StatefulWidget {
  const CarsProfileScreen({Key? key}) : super(key: key);

  @override
  _CarsProfileScreenState createState() => _CarsProfileScreenState();
}

class _CarsProfileScreenState extends State<CarsProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          HeadScreenWidget(
            title:'Данные автомобиля',
            height: 200,
            topPadding: 87,
            press: ()=>
                Navigator.of(context).pushNamed(Screens.main)),
          const LoadingCarPhoto(),
          Expanded(child: ScrolFormCar()),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 50),
            child: ProceedButton(
              text: 'ПОДТВЕРДИТЬ',
              press:()=>Navigator.of(context).pushNamed(Screens.createTrip),
              color: primaryColor,),
          ),
    ]));
  }
}




class FormCar {
  final String title;
  final IconData icon;

  FormCar({required this.title, required this.icon});
}

//генерация скрол-формы
class ScrolFormCar extends StatelessWidget {
  final List<FormCar> listFormCar = [
    FormCar(
      title: 'Водительский стаж',
      icon: UiIcons.fluent_contact_card_group_48_filledexperience,
    ),
    FormCar(
      title: 'Марка автомобиля',
      icon: UiIcons.groupbrand,
    ),
    FormCar(
      title: 'Модель авто',
      icon: UiIcons.groupmodel,
    ),
    FormCar(
      title: 'Номер Авто',
      icon: UiIcons.groupnumber,
    ),
    FormCar(
      title: 'Цвет',
      icon: Icons.format_color_fill,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> scrolFormCar = listFormCar
        .map((FormCar formCar) => FormCarRegistrationWidget(
              title: formCar.title,
              icon: formCar.icon,
            ))
        .toList();
    return ListView(
      scrollDirection: Axis.vertical,
      children: scrolFormCar,
    );
  }
}

class FormCarRegistrationWidget extends StatefulWidget {
  String title = '';
  IconData icon = Icons.error;

  FormCarRegistrationWidget({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  _FormCarRegistrationWidgetState createState() =>
      _FormCarRegistrationWidgetState(this.title, this.icon);
}

class _FormCarRegistrationWidgetState extends State<FormCarRegistrationWidget> {
  TextEditingController nameController = TextEditingController();
  String title = '';
  IconData icon = Icons.error;

  _FormCarRegistrationWidgetState(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 16),
      child: Column(
        children: [
          SizedBox(
            height: 21,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: textActiveColor,
                    )),
                const Text('*',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: errorColor,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 42,
            child: TextField(
                cursorColor: borderTextField,
                controller: nameController,
                style: const TextStyle(
                  color: textPassiveColor,
                  fontSize: 14.57,
                  fontFamily: 'Montserrat_Medium',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 35),
                  prefixIcon: SizedBox(
                    width: 15,
                      height: 15,
                      child: Icon(icon, size: 15)),
                  prefixIconColor: textPassiveColor,

                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: borderTextField, width: 1.04),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: borderTextField, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),

                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(color: borderTextField, width: 1.04),
                  //   borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  // ),
                )),
          ),
        ],
      ),
    );
  }
}

class LoadingCarPhoto extends StatefulWidget {
  const LoadingCarPhoto({Key? key}) : super(key: key);

  @override
  State<LoadingCarPhoto> createState() => _LoadingCarPhotoState();
}

class _LoadingCarPhotoState extends State<LoadingCarPhoto> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 22, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundColor: notSelectedPhoto,
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                UiIcons.vector_3,
                color: primaryColor,
                size: 24,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ФОТО АВТО',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: textActiveColor,
                ),
              ),
              const SizedBox(
                height: 5.5,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.error,
                    color: errorColor,
                    size: 16.67,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Нет фото',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: textPassiveColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          SizedBox(
            width: 108,
            height: 38,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor, width: 1.2),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(backGroundColor),
                    elevation: MaterialStateProperty.all<double>(0),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'ЗАГРУЗИТЬ',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.8,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


