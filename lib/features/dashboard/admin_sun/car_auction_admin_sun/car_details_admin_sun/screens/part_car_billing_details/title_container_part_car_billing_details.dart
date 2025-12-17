import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class TitleContainerPartCarBillingDetails extends StatelessWidget {
  const TitleContainerPartCarBillingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextInAppWidget(
            text:'تفاصيل الفواتير للسيارة ',
            textSize: 18,
            fontWeightIndex: FontSelectionData.semiBoldFontFamily,
            textColor:AppColors.greyColor,
          ),
        ),
      ],
    );
  }
}
