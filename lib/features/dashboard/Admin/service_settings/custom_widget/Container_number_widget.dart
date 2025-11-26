import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class ContainerNumberWidget extends StatelessWidget {
  final String textNumber;
  const ContainerNumberWidget({super.key,required this.textNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.blackColor44,
        shape: BoxShape.circle,
      ),
      child:TextInAppWidget(
        text:textNumber,
        textSize: 15,
        fontWeightIndex: FontSelectionData.regularFontFamily,
        textColor: AppColors.whiteColor,
      ),
    );
  }
}
