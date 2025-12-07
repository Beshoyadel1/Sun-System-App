import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

class ContainerOfColumnRequestStatusWidget extends StatelessWidget {
  final bool? isAccept,isReject,isNewOrder,isTruck;
  final double? textSize;
  const ContainerOfColumnRequestStatusWidget({
    super.key,
    this.isAccept=false,
    this.isReject=false,
    this.isNewOrder=false,
    this.isTruck=false,
    this.textSize,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsetsGeometry.symmetric(vertical: 5,horizontal: 10),
      decoration: BoxDecoration(
        color:isNewOrder!?AppColors.blackColor25:
        isReject!?AppColors.partPinkMixColor.withOpacity(0.1)
            :isAccept!? AppColors.partGreenMixColor.withOpacity(0.1):
        isTruck!?AppColors.lightGreenColor:
        AppColors.pinkColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        spacing: 5,
        children: [
          Icon(
            isNewOrder!?Icons.file_open_outlined:
            isReject!? Icons.close:
            isAccept!? Icons.done:
            isTruck!?Icons.airport_shuttle_outlined:
            Icons.settings,
            size: 15,
            color:isNewOrder!?AppColors.blackColor44:
            isReject!? AppColors.redColor:
            isAccept!? AppColors.greenColor:
            isTruck!? AppColors.blueColor:
            AppColors.orangeColor,
          ),
          Expanded(
            child: TextInAppWidget(
              text:isNewOrder!?AppLanguageKeys.newRequest:
              isReject!? AppLanguageKeys.requestRejected:
              isAccept!?AppLanguageKeys.delivered:
              isTruck!?AppLanguageKeys.onTheWay:
              AppLanguageKeys.underService,
              textSize: textSize??9,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:isNewOrder!?AppColors.blackColor44:
              isReject!? AppColors.redColor:
              isAccept!? AppColors.greenColor:
              isTruck!? AppColors.blueColor:
              AppColors.orangeColor,
            ),
          ),
        ],
      ),
    );
  }
}
