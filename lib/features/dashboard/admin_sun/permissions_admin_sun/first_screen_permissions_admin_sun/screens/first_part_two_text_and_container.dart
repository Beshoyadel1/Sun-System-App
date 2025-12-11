import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class FirstPartTwoTextAndContainer extends StatelessWidget {
  final String? title,subTitle,textContainer;
  final double? textSizeTitle,textSizeSubTitle,textSizeContainer;
  final Color? textColorTitle,textColorSubTitle,textColorContainer;
  final void Function()? onTap;
  const FirstPartTwoTextAndContainer({
    super.key,
    this.title,
    this.subTitle,
    this.textSizeContainer,
    this.textColorContainer,
    this.textColorSubTitle,
    this.textColorTitle,
    this.textContainer,
    this.textSizeSubTitle,
    this.textSizeTitle,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInAppWidget(
                text:title??'أدارة صلاحيات المستخدم',
                textSize: textSizeTitle??18,
                fontWeightIndex: FontSelectionData.semiBoldFontFamily,
                textColor:textColorTitle??AppColors.blackColor,
              ),
              TextInAppWidget(
                text:subTitle??'إعدادات صلاحيات المستخدمين داخل النظام',
                textSize:textSizeSubTitle?? 17,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor:textColorSubTitle??AppColors.blackColor44,
              ),
            ],
          ),
        ),
        InkWell(
          onTap:onTap ,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
            decoration: BoxDecoration(
              color: AppColors.orangeColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add,color: AppColors.whiteColor,),
                TextInAppWidget(
                  text:textContainer??'أضافة مستخدم',
                  textSize: textSizeContainer??15,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor:textColorContainer??AppColors.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
