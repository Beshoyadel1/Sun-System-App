import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class NumberRateStar extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final bool isSemiBold;
  final double? textSizeTitle;
  NumberRateStar({
    required this.title,
    this.titleColor,
    this.isSemiBold=false,
    this.textSizeTitle
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Image.asset(AppImageKeys.star11, width: 30),
        TextInAppWidget(
          text:title,
          textSize:textSizeTitle?? 12,
          fontWeightIndex:isSemiBold?FontSelectionData.semiBoldFontFamily: FontSelectionData.regularFontFamily,
          textColor:titleColor?? AppColors.darkColor,
        ),
      ],
    );
  }
}
