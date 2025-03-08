import 'package:flutter/material.dart';
import 'package:groceries_app/util/app_assets.dart';
import 'package:groceries_app/util/app_color.dart';
import 'package:flutter_svg/svg.dart';

class GroceriesButtonWithIcon extends StatelessWidget {
  final String title;
  final double marginLeft;
  final double marginRight;
  final Color bgColor;
  final String icon;
  final VoidCallback onTap;
  const GroceriesButtonWithIcon(
      {super.key,
      required this.title,
      required this.marginLeft,
      required this.marginRight,
      required this.bgColor,
      required this.icon,
      required this.onTap,
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.only(left: marginLeft, right: marginRight),
        // margin: EdgeInsets.symmetric(horizantal:),
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(19)),
        alignment: Alignment.center,
        child: SizedBox(
          width: double.infinity,
          height: 55,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(color: AppColor.whiteColor),
              ),
              Positioned(
                left: 35,
                child: SvgPicture.asset(
                  icon,
                  width: 23,
                  height: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
