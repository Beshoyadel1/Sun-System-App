import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';

class backgroundDesktop extends StatelessWidget {
  const backgroundDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 1,
      child: Scaffold(
        backgroundColor: AppColors.orangeColor,
        body: Container(
          color: AppColors.darkBlueColor.withOpacity(0.05),
          child: Center(
            child: Image.asset(
             AppImageKeys.car1,
              height: 220,
            ),
          ),
        ),
      ),
    );
  }
}
