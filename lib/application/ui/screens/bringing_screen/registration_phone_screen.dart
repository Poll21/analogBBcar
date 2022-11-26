import 'package:analoguebbcars/application/ui/widget/phone_input_formatter.dart';
import 'package:analoguebbcars/services/auth_servise/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../widget/proceed_button.dart';

class RegistrationPhoneScreen extends StatefulWidget {
  const RegistrationPhoneScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationPhoneScreen> createState() =>
      _RegistrationPhoneScreenState();
}

class _RegistrationPhoneScreenState extends State<RegistrationPhoneScreen> {
  TextEditingController phoneController =
      TextEditingController(); //хранит номер телефона и уведомляет подписчиков о изменениях

  bool otpVisibility = false;
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/cod_sms.png',
          ),
          const Text(
            'Телефон',
            style: TextStyle(
              color: primaryColor,
              fontSize: 33.5,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              letterSpacing: -1.04,
            ),
          ),
          const Text(
              'Мы заботимся о вас, поэтому нам важно, чтобы каждый профиль был настоящим',
              style: textActiveStyle),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 50,
              child: TextField(
                  inputFormatters: [PhoneInputFormatter()],
                  keyboardType: TextInputType.number,
                  cursorColor: borderTextField,
                  maxLength: 13,
                  controller: phoneController,
                  style: textFieldStyle,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    prefixText: '+7 ',
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
            ),
          ),
          const Text(
              'Данный номер могут использовать '
              'пользователи приложения для связи с вами',
              style: textActiveStyle),
          ProceedButton(
            text: 'РЕГИСТРАЦИЯ',
            press: () async {
              await AuthService().loginPhone(
                '+7${phoneController.text.replaceAll(RegExp(r'[^\d]+'), '')}',
              );
            },
            color: primaryColor,
          )
        ],
      ),
    ));
  }
}
