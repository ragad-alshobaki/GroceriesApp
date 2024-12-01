import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/calculator.dart';
import 'package:flutter_application_1/screens/splash/view/splash.dart';
import 'package:flutter_application_1/screens/onbording/view/onboarding.dart';
import 'package:flutter_application_1/screens/sign_in/view/sign_in.dart';
import 'package:flutter_application_1/screens/sign_in_mob_num/view/sign_in_mob_num.dart';
import 'package:flutter_application_1/util/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groceries App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        fontFamily: "Gilroy",
        useMaterial3: true,
      ),
      home: Calculator(),
    );
  }
}

// flutter run--no-enable-impeller