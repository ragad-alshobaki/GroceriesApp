import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/onbording/view/onboarding.dart';
import 'package:flutter_application_1/util/app_assets.dart';
import 'package:flutter_application_1/util/app_color.dart';
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
      // child: SvgPicture.aaset('assets/icons/nectar_icon.svg'),
      child: SvgPicture.asset(
        AppAssets.SplashIcon),
        ),
    );
  }
}