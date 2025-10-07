import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

class ColumnRequestStatusWidget extends StatelessWidget {
final bool? isAccept,isReject,isNewOrder;
  const ColumnRequestStatusWidget({
    super.key,
    this.isAccept=false,
    this.isReject=false,
    this.isNewOrder=false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.requestStatus,
          textSize: 11,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.greyColor,
        ),
        Container(
          width: 100,
          padding: EdgeInsetsGeometry.symmetric(vertical: 5,horizontal: 10),
          decoration: BoxDecoration(
            color:isNewOrder!?AppColors.blackColor25:
            isReject!?AppColors.partPinkMixColor.withOpacity(0.1)
                :isAccept!? AppColors.partGreenMixColor.withOpacity(0.1):
            AppColors.pinkColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            spacing: 5,
            children: [
              Icon(
                isNewOrder!?Icons.file_open_outlined:
                isReject!? Icons.close:
                isAccept!? Icons.done: Icons.settings,
                size: 15,
                color:isNewOrder!?AppColors.blackColor44:
                isReject!? AppColors.redColor:
                isAccept!? AppColors.greenColor:
                AppColors.orangeColor,
              ),
              Expanded(
                child: TextInAppWidget(
                  text:isNewOrder!?AppLanguageKeys.newRequest:
                  isReject!? AppLanguageKeys.requestRejected:
                  isAccept!?AppLanguageKeys.delivered:AppLanguageKeys.underService,
                  textSize: 9,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor:isNewOrder!?AppColors.blackColor44:
                  isReject!? AppColors.redColor:
                  isAccept!? AppColors.greenColor:AppColors.orangeColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
