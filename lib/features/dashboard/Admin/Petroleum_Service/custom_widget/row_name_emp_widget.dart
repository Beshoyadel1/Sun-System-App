import 'package:flutter/cupertino.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class RowNameEmpWidget extends StatelessWidget {
  final String? title,nameEmp,imagePath;
  const RowNameEmpWidget({
    super.key,
    this.title,
    this.nameEmp,
    this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Image.asset(imagePath??AppImageKeys.person22),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            TextInAppWidget(
              text:title??'أسم العامل',
              textSize: 9,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.greyColor,
            ),
            TextInAppWidget(
              text:nameEmp??'أحمد محمود',
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.darkColor,
            )
          ],
        )
      ],
    );
  }
}
