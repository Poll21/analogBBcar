import 'package:analoguebbcars/application/ui/constants/constants.dart';
import 'package:analoguebbcars/services/auth_servise/auth_controller.dart';
import 'package:analoguebbcars/services/user_secure_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../navigation/main_navigation.dart';
import '../../widget/proceed_button.dart';
import 'registration_profile_scrin.dart';

class CodSmsScreen extends StatefulWidget {
  final String verificationCode;
  final int resendToken;

  const CodSmsScreen({super.key, required this.verificationCode, required this.resendToken});




  @override
  State<CodSmsScreen> createState() => _CodSmsScreenState();
}

class _CodSmsScreenState extends State<CodSmsScreen> {

  TextEditingController otpController = TextEditingController(); //хранит код подтверждения и уведомляет подписчиков о изменениях
  //FirebaseAuth auth = FirebaseAuth.instance;
  User? user;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/sms.png',
              ),
              const Text(
                'Код подтверждения',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 33.5,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -1.04,
                ),
              ),
              const Text('Введите код, отправленный по SMS',
                  style: TextStyle(
                      color: textActiveColor,
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 1.5)),
              SizedBox(
                height: 50,
                width: 120,
                child: TextField(
                    controller: otpController,
                    textAlign: TextAlign.center,
                    maxLength: 6,
                    cursorColor: borderTextField,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      color: textPassiveColor,
                      fontSize: 15,
                      fontFamily: 'Montserrat_Medium',
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: const InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      prefixIconColor: textPassiveColor,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: borderTextField, width: 1.04),
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: borderTextField, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                    )),
              ),
              ProceedButton(
                text: 'ПОДТВЕРДИТЬ',
                press: () {
                  AuthService().verifyOTP(otpController.text.toString(), widget.verificationCode);
                  if (AuthService().user!= null){
                    Get.to(RegistrationProfileScreen());
                  }
                },

                color: primaryColor,
              ),
              TextButton(
                onPressed: () {
                   AuthService().smsResending(widget.resendToken);
                      print('$widget.resendToken');
                },
                child: const Text('Код не пришёл',
                    style: TextStyle(
                        color: errorColor,
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        height: 1.5)),
              ),
            ],
          ),
        ));
  }
}
//   _loginPhone() async {
//
//     auth.verifyPhoneNumber(
//       phoneNumber: '+7${widget.userPhone.replaceAll(RegExp(r'[^\d]+'), '')}',
//
//       verificationCompleted: (PhoneAuthCredential credential) async {
//         await auth.signInWithCredential(credential).then((value) async {
//           if (value.user != null) {
//             final String Uid = user!.uid;
//             final String phoneNumber = user!.phoneNumber.toString();
//             await UserSecureStorage.setUid(Uid);
//             await UserSecureStorage.setPhoneNumber(phoneNumber);
//             print(Uid);
//             print(phoneNumber);
//
//             Navigator.of(context).pushNamed(Screens.registrationProfile);
//           }
//         });
//       },
//       verificationFailed: (FirebaseAuthException e) {
//         //обработает ошибки ввода номера телефона
//         print(e.message);
//         Fluttertoast.showToast(
//           msg: 'Номер телефона введен не верно.',
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           timeInSecForIosWeb: 60,
//           backgroundColor: errorColor,
//           textColor: Colors.white,
//           fontSize: 15,
//         );
//         Navigator.of(context).pushNamed(Screens.registrationPhone);
//       },
//       codeAutoRetrievalTimeout: (String verificationID) {
//         setState(() {
//           _verificationCode = verificationID;
//         });
//       },
//       // timeout: Duration(seconds: 30),//Обработка тайм-аута при сбое автоматической обработки SMS-кода.
//       codeSent: (String verificationID, int? resendToken) {
//         //код отправлен успешно
//         setState(() {
//           _verificationCode = verificationID;
//         });
//       },
//     );
//   }
// }
