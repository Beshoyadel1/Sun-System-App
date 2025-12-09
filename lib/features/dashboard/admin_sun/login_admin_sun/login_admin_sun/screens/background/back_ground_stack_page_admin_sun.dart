import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../../core/theming/assets.dart';

class BackGroundStackPageAdminSun extends StatelessWidget {
  const BackGroundStackPageAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppImageKeys.backgroun_admin_sun,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImageKeys.sun_logo_emp2),
                  TextInAppWidget(
                    text:'Powering the Future of Automotive Operations',
                    textSize: 20,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor:AppColors.whiteColor,
                    isTextCenter: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
