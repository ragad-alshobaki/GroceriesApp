import 'package:flutter/material.dart';

import 'package:groceries_app/screens/sign_in_mob_num.dart';
import 'package:groceries_app/shared/widgets/app_btn.dart';
import 'package:groceries_app/util/app_assets.dart';
import 'package:groceries_app/util/app_color.dart';
import 'package:groceries_app/util/app_font.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            // fit: BoxFit.contain,
            image: AssetImage(AppAssets.OnBoardingImage),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          SvgPicture.asset(AppAssets.LogoIcon),
          const SizedBox(height: 35,),
          const Text("Welcom\nto our store",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColor.whiteColor,
            fontSize: 48,
            // fontWeight: FontWeight.w500,
            fontWeight: AppFontWeight.gilroySemiBoldSize,
            ),
            ),
          const SizedBox(height: 19,),
          Text("Get your groceries in as fast as one hour",
          textAlign: TextAlign.center,
          style: TextStyle(
            // color: AppColor.lightGreyColor.withOpacity(0.7), deprecated
            color: AppColor.lightGreyColor.withAlpha((0.7 * 255).toInt()),
            fontSize: 16,
            fontWeight: AppFontWeight.gilroyMediumSize,
            ),
            ),
          const SizedBox(height: 40,),
          GroceriesButton(
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignInMobNumPage())
              );
            },
            title: 'Get started',
            marginLeft: 30.5,
            marginRight: 30.5,),
          const SizedBox(height: 60,),
        ],)
      ),
    );
  }
}