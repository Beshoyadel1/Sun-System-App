import 'package:flutter/material.dart';

import '../../theming/colors.dart';
import '../../theming/fonts.dart';
import '../../theming/text_styles.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomContainer({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.orangeColor : AppColors.whiteColor,
          border: Border.all(color: isSelected ?AppColors.orangeColor:AppColors.lightGreyColor),
          borderRadius: BorderRadius.circular(24),
        ),
        child:
        TextInAppWidget(
          text:text,
          textSize: 14,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: isSelected ? AppColors.whiteColor : AppColors.greyColor,
        ),

      ),
    );
  }
}
