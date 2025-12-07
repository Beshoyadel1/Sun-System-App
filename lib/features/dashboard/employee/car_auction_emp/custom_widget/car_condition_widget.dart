import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class CarConditionWidget extends StatelessWidget {
  final String? textContainer;
  final bool? isNew;
  const CarConditionWidget({
    super.key,
    this.isNew=false,
    this.textContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.carCondition,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.greyColor,
        ),
        Container(
          padding: EdgeInsetsGeometry.symmetric(vertical: 5,horizontal: 20),
          decoration: BoxDecoration(
            color: isNew!?AppColors.lightGreenColor:AppColors.pinkColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImageKeys.car_container,color: isNew!?AppColors.blueColor:AppColors.orangeColor,),
              TextInAppWidget(
                text:textContainer??(isNew!?AppLanguageKeys.brandNew:AppLanguageKeys.usage),
                textSize: 13,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor:isNew!?AppColors.blueColor:AppColors.orangeColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}
