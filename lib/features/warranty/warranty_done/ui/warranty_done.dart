import 'package:flutter/material.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class WarrantyDoneState extends StatefulWidget {
  const WarrantyDoneState({super.key});

  @override
  State<WarrantyDoneState> createState() => _WarrantyDoneState();
}

class _WarrantyDoneState extends State<WarrantyDoneState> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImageKeys.done_star),
            const SizedBox(height: 20),
            TextInAppWidget(
              text: AppLanguageKeys.balanceChargedSuccessfully,
              textSize: 20,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor: AppColors.darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
