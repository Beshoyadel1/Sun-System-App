import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';


class TitleManagePage extends StatelessWidget {
  const TitleManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInAppWidget(
      text:'إدارة صفحات السياسات',
      textSize: 20,
      fontWeightIndex: FontSelectionData.semiBoldFontFamily,
      textColor:AppColors.blackColor,
    );
  }
}
