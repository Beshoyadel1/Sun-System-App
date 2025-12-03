import 'package:flutter/material.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../../core/theming/assets.dart';

class BackgroundStackPage extends StatelessWidget {
  const BackgroundStackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImageKeys.login_emp,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImageKeys.sun_logo_emp2),
                TextInAppWidget(
                  text:AppLanguageKeys.yourPerfectPlatform,
                  textSize: 20,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor:AppColors.whiteColor,
                  isTextCenter: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
