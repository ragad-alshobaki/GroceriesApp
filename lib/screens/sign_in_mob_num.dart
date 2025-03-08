import 'package:flutter/material.dart';
import 'package:groceries_app/util/app_assets.dart';
import 'package:groceries_app/util/app_color.dart';
import 'package:groceries_app/util/app_font.dart';
import 'package:flutter_svg/svg.dart';

class SignInMobNumPage extends StatelessWidget {
  SignInMobNumPage({super.key});
  final TextEditingController numController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppAssets.topBgImage),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16,),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(AppAssets.backArrowIcon)
                    ),
                  const SizedBox(height: 65,),
                  const Text("Enter your mobile number",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: AppFontWeight.gilroySemiBoldSize,
                  ),),
                  const SizedBox(height: 27,),
                  const Text("Mobile Number",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: AppFontWeight.gilroySemiBoldSize,
                    color: AppColor.greyColor,
                  ),),
                  const SizedBox(height: 10,),
                  Row(
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
                          fontSize: 18,
                          fontWeight: AppFontWeight.gilroyMediumSize,
                          color: AppColor.darkGreyColor,
                        ),
                      ),
                      const SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 1,
                    height: 30,
                    color: AppColor.greyColor,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      maxLength: 10,
                      controller: numController,
                      keyboardType: const TextInputType.numberWithOptions(),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your mobile number",
                        // hintStyle: Text(style: ,)
                        counterText: "",
                      ),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    height: 1,
                    color: AppColor.hrLineColor,
                  ),
                  // const VerticalDivider(
                  //   color: AppColor.darkGreyColor,
                  //   thickness: 5,
                  // )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.primaryColor,
        shape: const CircleBorder(),
        child: SvgPicture.asset(AppAssets.forwardArrowIcon,
        fit: BoxFit.none,
        // width: 16,
        // height: 16,
        ),
      ),
    );
  }
}
