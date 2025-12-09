import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerLogoSunAdminSun extends StatelessWidget {
  const ContainerLogoSunAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: AppColors.orangeColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Row(
        spacing: 5,
        children: [
          Flexible(child: Image.asset(AppImageKeys.sun_logo_emp2,width: 100,)),
          Flexible(child: Image.asset(AppImageKeys.sun_logo_emp,width: 150,))
        ],
      ),
    );
  }
}
