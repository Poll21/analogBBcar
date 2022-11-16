import 'package:analoguebbcars/application/data/data_user/user_data.dart';
import 'package:analoguebbcars/application/ui/screens/bringing_screen/registration_profile_scrin.dart';
import 'package:analoguebbcars/services/user_secure_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../application/ui/constants/constants.dart';
import '../application/ui/screens/bringing_screen/cod_sms_screen.dart';
import '../application/ui/screens/bringing_screen/registration_phone_screen.dart';
import '../application/ui/screens/main_tabs/main_tabs_screen.dart';

class AuthService {

  FirebaseAuth auth = FirebaseAuth.instance;

  User? user;

  Future<UserData?> loginPhone(String userPhone) async {

    auth.verifyPhoneNumber(
      phoneNumber: userPhone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          if (value.user != null) {


            UserSecureStorage.setUid(user!.uid);
            UserSecureStorage.setPhoneNumber(user!.phoneNumber.toString());

            Fluttertoast.showToast(
              msg: 'Регистрация завершена.',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 60,
              backgroundColor: primaryColor,
              textColor: Colors.white,
              fontSize: 20,
            );
            Get.to(const RegistrationProfileScreen());

            return UserData.fromFirebase(user!);
          }else {
            return null;
          }
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        //обработает ошибки ввода номера телефона
        print(e.message);
        Fluttertoast.showToast(
          msg: 'Номер телефона введен не верно.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 60,
          backgroundColor: errorColor,
          textColor: Colors.white,
          fontSize: 20,
        );
      },

      //timeout: Duration(seconds: 120),//Обработка тайм-аута при сбое автоматической обработки SMS-кода.
      codeSent: (String verificationID, int? resendToken) {
        if (resendToken != null) {
          Fluttertoast.showToast(
            msg:
                'На ваш номер отправлен SMS-код, не сообщайте его третьим лицам',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 60,
            backgroundColor: primaryColor,
            textColor: Colors.white,
            fontSize: 20,
          );
          Get.to(CodSmsScreen(
              verificationCode: verificationID, resendToken: resendToken));
          UserSecureStorage.setToken(resendToken);
        }
        //код отправлен успешно
      },

      codeAutoRetrievalTimeout: (String verificationID) {
        Fluttertoast.showToast(
          msg: 'Kод не отправлен',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 60,
          backgroundColor: errorColor,
          textColor: Colors.white,
          fontSize: 20,
        );
      },
    );
  }



  Future<UserData?> verifyOTP(String otpController, String verificationCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationCode, smsCode: otpController);

    await auth.signInWithCredential(credential).then(
      (value) {
        user = auth.currentUser;
      },
    ).whenComplete(
      () {
        if (user != null) {
          UserSecureStorage.setUid(user!.uid);
          UserSecureStorage.setPhoneNumber(user!.phoneNumber.toString());

          Fluttertoast.showToast(
            msg: 'Регистрация завершена.',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 60,
            backgroundColor: primaryColor,
            textColor: Colors.white,
            fontSize: 20,
          );
          Get.to(const RegistrationProfileScreen());
          return UserData.fromFirebase(user!);
        } else {
          Fluttertoast.showToast(
            msg: 'Не верный проверочный SMS-код',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 60,
            backgroundColor: errorColor,
            textColor: Colors.white,
            fontSize: 20,
          );

        return null;

        }
      },
    );
  }

  void smsResending(int resendToken) async {
    PhoneAuthCredential credential =
    PhoneAuthProvider.credentialFromToken(resendToken);
    await auth.signInWithCredential(credential);
  }

  Future<void> logout() async {
    await auth.signOut();
  }

  Stream<UserData?> get currentUser{
    return auth.userChanges().map((User? user) => user != null ? UserData.fromFirebase(user) : null );
    //toString((User user) => user != null ? UserData.fromFirebase(user) : null);
  }
}
