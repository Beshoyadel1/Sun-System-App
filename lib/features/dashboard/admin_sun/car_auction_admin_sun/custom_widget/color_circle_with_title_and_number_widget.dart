import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';


class ColorCircleWithTitleAndNumberWidget extends StatelessWidget {
  final Color? color;
  final String? text,number;
  final bool? isContainerNumber;
  final double? textSizeTitle,textSizeNumber;
  const ColorCircleWithTitleAndNumberWidget({
    super.key,
    this.text,
    this.color,
    this.number,
    this.isContainerNumber=false,
    this.textSizeTitle,
    this.textSizeNumber
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
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
              textSize:textSizeTitle?? 13,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.blackColor44,
            ),
          ],
        ),
        isContainerNumber!?
        Container(
          padding: EdgeInsets.symmetric(horizontal: 7,vertical: 2),
          decoration: BoxDecoration(
            color: AppColors.cyanColor.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: TextInAppWidget(
          text:number??'100%',
              textSize: textSizeNumber??13,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:AppColors.blackColor44,
              ),
        )
            :
        TextInAppWidget(
          text:number??'100%',
          textSize: textSizeNumber??13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.blackColor44,
        ),
      ],
    );
  }
}
