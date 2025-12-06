import 'package:flutter/material.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class NumberMessageWidget extends StatelessWidget {
  final String? numberMessage;
  const NumberMessageWidget({
    super.key,
    this.numberMessage
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.messagesCount,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.greyColor,
        ),
        Row(
          spacing: 5,
          children: [
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color:AppColors.orangeColor,
                shape: BoxShape.circle
              ),
              child: TextInAppWidget(
                text:numberMessage??'5',
                textSize: 13,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor:AppColors.whiteColor,
              ),
            ),
            TextInAppWidget(
              text:AppLanguageKeys.messages,
              textSize: 13,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.blackColor,
            ),
          ],
        )
      ],
    );
  }
}
