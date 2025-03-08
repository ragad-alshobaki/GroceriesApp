import 'package:flutter/material.dart';
import 'package:groceries_app/util/app_color.dart';

class GroceriesButton extends StatelessWidget {
  final String title;
  final double marginLeft;
  final double marginRight;
  final VoidCallback onTap;
  const GroceriesButton({
    super.key,
    required this.title,
    required this.marginLeft,
    required this.marginRight,
    required this.onTap
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
        margin: EdgeInsets.only(
          left: marginLeft,
          right: marginRight
        ),
        // margin: EdgeInsets.symmetric(horizantal:),
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(19)
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: AppColor.whiteColor),
          )
      ),
    );
  }
}