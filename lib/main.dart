import 'package:flutter/material.dart';
import 'package:groceries_app/screens/splash/splash.dart';
import 'package:groceries_app/util/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const SplashPage(),
    );
  }
}

// flutter run--no-enable-impeller