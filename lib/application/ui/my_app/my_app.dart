import 'package:analoguebbcars/application/ui/navigation/main_navigation.dart';
import 'package:analoguebbcars/application/ui/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../services/auth_servise/auth_binding.dart';
import '../../../services/auth_servise/root/root.dart';
import '../screens/bringing_screen/bringing_screen.dart';
import '../screens/bringing_screen/registration_phone_screen.dart';


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
      initialBinding: AuthBinding(),
      home: const Root(),
      title: 'CarBlaBla',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      // routes: mainNavigation.routes,
      // onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}