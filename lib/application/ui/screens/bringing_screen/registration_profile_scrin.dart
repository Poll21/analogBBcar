import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/application/ui/widget/proceed_button.dart';
import 'package:analoguebbcars/services/auth_servise/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RegistrationProfileScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  //Rx<TextEditingController> name  = nameController.value.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 52),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Данные профиля',
              style: TextStyle(
                color: primaryColor,
                fontSize: 33.5,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                letterSpacing: -1.04,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 83,
                  backgroundColor: notSelectedPhoto,
                  child: Image.asset(
                    'assets/images/photo.png',
                    height: 166,
                    width: 166,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: primaryColor,
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: backGroundColor,
                    size: 45,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 21,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text('Имя',
                                style: textActiveStyle),
                            Obx(() {
                              if (nameController.value != null) {
                                print(nameController.value);
                                return Text('*',
                                    style: const TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: errorColor,
                                    ));
                              } else {
                                print(nameController.value);
                                return Text('*',
                                    style: const TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: primaryColor,
                                    ));

                              }
                            }),


                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const SizedBox(
                        height: 42,
                        child: TextField(
                         // controller: nameController.value,
                            cursorColor: borderTextField,
                            style: TextStyle(
                              color: textPassiveColor,
                              fontSize: 14.57,
                              fontFamily: 'Montserrat_Medium',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 35),
                              prefixIconColor: textPassiveColor,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: borderTextField, width: 1.04),
                                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: borderTextField, width: 1.5),
                                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              ),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  FormProfileWidget(
                    title: 'Телефон',
                    error: '*',
                  ),
                  const SizedBox(height: 17),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 297,
                        child: FormProfileWidget(
                          title: 'Социальные сети',
                          error: '',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13, bottom: 6),
                        child: SizedBox(
                          width: 29,
                          height: 29,
                          child: FloatingActionButton(
                            elevation: 0,
                            backgroundColor: primaryColor,
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              color: backGroundColor,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  const TextField(
                      cursorColor: borderTextField,
                      style: TextStyle(
                        color: textPassiveColor,
                        fontSize: 14.57,
                        fontFamily: 'Montserrat_Medium',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 35),
                        prefixIconColor: textPassiveColor,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: borderTextField, width: 1.04),
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: borderTextField, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 17),
            ProceedButton(
              text: 'ПОДТВЕРДИТЬ',
              press: () => {

              },
              color: primaryColor,
            ),
            const SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () {
                  AuthService().logout();
                },
                // {Navigator.of(context).pushNamed(Screens.constcodSms)},
                child: const Text('Выход',
                    style: TextStyle(
                        color: textActiveColor,
                        fontSize: 12.5,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        height: 1.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FormProfileWidget extends StatefulWidget {
  String title = '';
  String error = '*';

  FormProfileWidget({
    Key? key,
    required this.title,
    required this.error,
  }) : super(key: key);

  @override
  _FormProfileWidgetState createState() => _FormProfileWidgetState(
        this.title,
        this.error,
      );
}

class _FormProfileWidgetState extends State<FormProfileWidget> {
  TextEditingController nameController = TextEditingController();
  String title = '';
  String error = '*';

  _FormProfileWidgetState(
    this.title,
    this.error,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 21,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: textActiveColor,
                  )),
              Text(error,
                  style: const TextStyle(
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
        const SizedBox(
          height: 42,
          child: TextField(
              cursorColor: borderTextField,
              style: TextStyle(
                color: textPassiveColor,
                fontSize: 14.57,
                fontFamily: 'Montserrat_Medium',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 35),
                prefixIconColor: textPassiveColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: borderTextField, width: 1.04),
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: borderTextField, width: 1.5),
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
              )),
        ),
      ],
    );
  }
}


