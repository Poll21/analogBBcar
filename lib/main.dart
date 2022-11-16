import 'package:analoguebbcars/application/ui/my_app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //инициализация в Firebase
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginScreen(),
//       debugShowCheckedModeBanner: false,
//       color: Colors.indigo[900],
//     );
//   }
// }