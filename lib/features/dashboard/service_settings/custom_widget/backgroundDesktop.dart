import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';

class backgroundDesktop extends StatelessWidget {
  final int? flexNumber;
  const backgroundDesktop({
    super.key,
    this.flexNumber=1
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: AppColors.orangeColor,
      child: Image.asset(
        AppImageKeys.sun_logo,
        height: double.infinity,
        width: 250,
      ),
    );
  }
}
