import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class ContainerDesignMessageDetailsCarWidget extends StatelessWidget {
  final String? title,subTitle,numberMessage;
  final bool? isMessage;
  const ContainerDesignMessageDetailsCarWidget({
    super.key,
    this.isMessage=false,
    this.numberMessage,
    this.subTitle,
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.greyColor.withOpacity(0.3)
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 10,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.pinkColor,
                  shape: BoxShape.circle
                ),
                child: Image.asset(AppImageKeys.new_message),
              ),
              Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextInAppWidget(
                    text:title??'كام السوم من فضلك',
                    textSize: 13,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor:AppColors.blackColor,
                  ),
                  TextInAppWidget(
                    text:subTitle??'2 يناير - 6:00 م',
                    textSize: 10,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor:AppColors.orangeColor,
                  ),
                ],
              )
            ],
          ),
          if(isMessage!)
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
        ],
      ),
    );
  }
}
