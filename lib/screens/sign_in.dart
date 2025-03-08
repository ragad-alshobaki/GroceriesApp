import 'package:flutter/material.dart';
import 'package:groceries_app/screens/sign_in_mob_num.dart';
import 'package:groceries_app/util/app_assets.dart';
import 'package:groceries_app/util/app_color.dart';
import 'package:groceries_app/util/app_font.dart';

import '../../../shared/widgets/app_btn_with_icon.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppAssets.landingSignInImage,
                height: 380, fit: BoxFit.cover),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Get your groceries\nwith nectar",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: AppFontWeight.gilroySemiBoldSize),
                  ),
                  const SizedBox(
                    height: 31,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignInMobNumPage();
                          },
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          AppAssets.flagImage,
                          width: 33,
                          height: 23,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          "+880",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: AppFontWeight.gilroyMediumSize,
                            color: AppColor.darkGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    height: 1,
                    color: AppColor.hrLineColor,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Center(
                    child: Text(
                      "Or connect with social media",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: AppFontWeight.gilroyMediumSize,
                        color: AppColor.sGreyColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  GroceriesButtonWithIcon(
                    title: "Continue with Google",
                    marginRight: 0,
                    marginLeft: 0,
                    onTap: () {},
                    bgColor: AppColor.gBtnColor,
                    icon: AppAssets.googleIcon,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GroceriesButtonWithIcon(
                    title: "Continue with Facebook",
                    marginRight: 0,
                    marginLeft: 0,
                    onTap: () {},
                    bgColor: AppColor.fBtnColor,
                    icon: AppAssets.facebookIcon,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
