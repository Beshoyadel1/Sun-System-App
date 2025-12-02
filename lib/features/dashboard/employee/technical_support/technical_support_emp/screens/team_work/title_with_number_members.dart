import 'package:flutter/cupertino.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../core/language/language_constant.dart';

class TitleWithNumberMembers extends StatelessWidget {
  const TitleWithNumberMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.teamMembers,
          textSize: 18,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor,
        ),
        Row(
          spacing: 20,
          children: [
            Flexible(
              child: TextInAppWidget(
                text: AppLanguageKeys.membersCount,
                textSize: 15,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.blackColor,
              ),
            ),
            Container(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                color: AppColors.greyColor200,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child:TextInAppWidget(
                text:'6',
                textSize: 12,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.blackColor,
              ),
            )
          ],
        )
      ],
    );
  }
}
