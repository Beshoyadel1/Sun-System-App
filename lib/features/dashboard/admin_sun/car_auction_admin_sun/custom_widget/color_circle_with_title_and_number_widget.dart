import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';


class ColorCircleWithTitleAndNumberWidget extends StatelessWidget {
  final Color? color;
  final String? text,number;
  const ColorCircleWithTitleAndNumberWidget({
    super.key,
    this.text,
    this.color,
    this.number
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 10,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: color??AppColors.blackColor44,
                shape: BoxShape.circle
              ),
            ),
            TextInAppWidget(
              text:text??'البترول',
              textSize: 13,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.blackColor44,
            ),
          ],
        ),
        TextInAppWidget(
          text:number??'100%',
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.blackColor44,
        ),
      ],
    );
  }
}
