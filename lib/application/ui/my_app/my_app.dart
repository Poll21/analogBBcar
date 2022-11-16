import 'package:analoguebbcars/application/ui/navigation/main_navigation.dart';
import 'package:analoguebbcars/application/ui/themes/app_theme.dart';
import 'package:analoguebbcars/services/auth_servise.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/get_pages/get_pages.dart';
import '../screens/bringing_screen/bringing_screen.dart';
import '../screens/bringing_screen/registration_phone_screen.dart';

class Controller extends GetxController{
  var isLogin = AuthService().currentUser.obs;
}

class MyApp extends StatelessWidget {
  final mainNavigation = MainNavigation();

  MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages:[
        GetPage(name: '/', page:() => BringingScreen()),
        GetPage(name: '/registrationPhoneScreen', page:() => const RegistrationPhoneScreen()),
      ],
      // myGetPage,

      title: 'CarBlaBla',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      // routes: mainNavigation.routes,
      // onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}