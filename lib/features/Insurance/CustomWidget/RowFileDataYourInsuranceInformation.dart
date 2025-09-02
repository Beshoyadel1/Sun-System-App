import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';

class RowFileDataYourInsuranceInformation extends StatelessWidget {
  final String title,subTitle;
  const RowFileDataYourInsuranceInformation({super.key,required this.title,required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImageKeys.file),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text:title,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.greyColor,
            ),
            SizedBox(
              height: 5,
            ),
            TextInAppWidget(
              text:subTitle,
              textSize: 14,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.darkColor,
            ),
          ],
        )
      ],
    );
  }
}
