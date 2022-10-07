//SLIIT final year group project

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smartpredi/mainscreen/splash.dart';
import 'mainscreen/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  // TODO: implement key


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => SplashScreen(),
        '/home' : (context) => Login(),
      },
    );
  }
}

