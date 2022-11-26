import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/application/ui/my_app/my_app.dart';
import 'package:analoguebbcars/application/ui/screens/bringing_screen/registration_phone_screen.dart';
import 'package:analoguebbcars/application/ui/widget/proceed_button.dart';
import 'package:analoguebbcars/services/auth_servise/auth_controller.dart';
import 'package:analoguebbcars/services/user_secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class BringingScreen extends StatelessWidget {
  BringingScreen({Key? key}) : super(key: key);
final controller = Get.put(Controller());

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
              press: () async{
                final String? userPhone = await UserSecureStorage().getPhoneNumber();
               if (userPhone != null) {
                  await AuthService().loginPhone(userPhone!);
                }else {
                  Fluttertoast.showToast(
                    msg: 'Вы не зарегистрированы! Пройдите процедуру регистрации',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 60,
                    backgroundColor: errorColor,
                    textColor: Colors.white,
                    fontSize: 20,
                  );
                }
              },
              color: primaryColor,
            ),
            const SizedBox(height: 32),
            ProceedButton(
              text: 'Регистрация',
              press: () => Get.to(const RegistrationPhoneScreen()),
              color: primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
