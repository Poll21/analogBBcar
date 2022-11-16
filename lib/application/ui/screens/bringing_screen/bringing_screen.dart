import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/application/ui/navigation/main_navigation.dart';
import 'package:analoguebbcars/application/ui/screens/bringing_screen/registration_phone_screen.dart';
import 'package:analoguebbcars/application/ui/screens/bringing_screen/registration_profile_scrin.dart';
import 'package:analoguebbcars/application/ui/widget/proceed_button.dart';
import 'package:analoguebbcars/services/auth_servise.dart';
import 'package:analoguebbcars/services/user_secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:analoguebbcars/application/data/get_pages/get_pages.dart';

class BringingScreen extends StatelessWidget {
  BringingScreen({Key? key}) : super(key: key);
 final String? userPhone = UserSecureStorage.getPhoneNumber().toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 148),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/bringing.png',
              width: 340,
              height: 288,
            ),
            const SizedBox(height: 32),
            const Text(
              'Поиск попутчиков',
              style: TextStyle(
                color: primaryColor,
                fontSize: 33.5,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                letterSpacing: -1.04,
              ),
            ),
            const SizedBox(height: 9),
            const Text(
                'Найдите подходящую поездку, попутчиков или отправьте груз',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: textActiveColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.72,
                )),
            const SizedBox(height: 32),
            ProceedButton(
              text: 'Вход',
              press: () =>
                userPhone != null ?
                AuthService().loginPhone(userPhone!.toString()) : Get.to(const RegistrationPhoneScreen()),
              //Get.to(const RegistrationPhoneScreen()),
              color: primaryColor,
            ),
            const SizedBox(height: 32),
            ProceedButton(
              text: 'Регистрация',
              press: () {
                Get.to(const RegistrationPhoneScreen());
              },

              //Get.to(const RegistrationPhoneScreen()),
              color: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
