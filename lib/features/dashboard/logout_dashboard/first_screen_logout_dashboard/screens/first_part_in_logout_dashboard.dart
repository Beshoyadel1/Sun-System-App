import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class FirstPartInLogoutDashboard extends StatelessWidget {
  const FirstPartInLogoutDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        SizedBox(height: 20,),
        TextInAppWidget(
          text:AppLanguageKeys.logout,
          textSize: 16,
          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
          textColor:AppColors.blackColor,
        ),
        TextInAppWidget(
          text:AppLanguageKeys.confirmLogout,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.blackColor,
        ),
        SizedBox(height: 10,),
        Image.asset(AppImageKeys.logout,width: 100,)
      ],
    );
  }
}
