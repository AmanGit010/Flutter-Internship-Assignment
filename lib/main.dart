import 'package:flutter/material.dart';
import 'package:login_assignment/Pages/Homepage.dart';
import 'package:login_assignment/Pages/LandingPage.dart';
import 'package:login_assignment/Pages/MainPage.dart';
import 'package:login_assignment/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.landing,
      routes: {
        "/": (context) => const landing(),
        "/landing": (context) => const landing(),
        "/main": (context) => const mainpage(),
        "/home": (context) => const home(),
      },
    );
  }
}
