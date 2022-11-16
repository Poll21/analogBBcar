import 'package:get/get.dart';

import '../../ui/screens/bringing_screen/bringing_screen.dart';
import '../../ui/screens/bringing_screen/registration_phone_screen.dart';

final List<GetPage<dynamic>> myGetPage = [
  GetPage(name: '/', page:() => BringingScreen()),
  GetPage(name: '/registrationPhoneScreen', page:() =>const RegistrationPhoneScreen()),


];