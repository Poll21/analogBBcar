import 'package:analoguebbcars/application/ui/screens/bringing_screen/bringing_screen.dart';
import 'package:analoguebbcars/application/ui/screens/bringing_screen/registration_profile_scrin.dart';
import 'package:analoguebbcars/services/auth_servise/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Root extends GetWidget<AuthController>{
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX(
      initState: (_) async {
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        if (Get.find<AuthController>().user?.uid != null) {
          return RegistrationProfileScreen();
        } else {
          return BringingScreen();
        }
      },
    );
  }
}