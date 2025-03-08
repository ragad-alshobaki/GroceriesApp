import 'package:flutter/material.dart';
import 'package:groceries_app/screens/onboarding/onboarding.dart';
import 'package:groceries_app/util/app_assets.dart';
import 'package:groceries_app/util/app_color.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
    () {
      // debugPrint("Test");
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) {
        return const OnBoardingPage();
      },
      fullscreenDialog: true,
      ));
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: AppColor.primaryColor,
    body: Center(
      // child: SvgPicture.asset('assets/icons/nectar_icon.svg'),
      child: SvgPicture.asset(
        AppAssets.SplashIcon),
        ),
    );
  }
}