import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class ListDataInPartCarBillingDetailsWidget extends StatelessWidget {
  final String? numberOrder,date,name,cost;
  const ListDataInPartCarBillingDetailsWidget({
    super.key,
    this.cost,
    this.date,
    this.name,
    this.numberOrder
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextInAppWidget(
                  text:numberOrder??'#656556',
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor:AppColors.blackColor,
                ),
                TextInAppWidget(
                  text:date??'1/1/2025 ',
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor:AppColors.blackColor44,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextInAppWidget(
                  text:name??'البترول',
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor:AppColors.greyColor,
                ),
                RowNumberCoinWidget(
                    numberText:cost?? '250',
                    sizeText: 15,
                    imageSrc: AppImageKeys.coin
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
