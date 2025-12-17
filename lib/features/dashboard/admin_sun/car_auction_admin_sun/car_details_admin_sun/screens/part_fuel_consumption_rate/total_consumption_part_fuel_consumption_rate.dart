import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class TotalConsumptionPartFuelConsumptionRate extends StatelessWidget {
  const TotalConsumptionPartFuelConsumptionRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        TextInAppWidget(
          text:'إجمالي الاستهلاك',
          textSize: 18,
          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
          textColor:AppColors.blackColor,
        ),
       Row(
         children: [
           RowNumberCoinWidget(
               numberText: '450.00',
               sizeText: 15,
               imageSrc: AppImageKeys.coin
           ),
         ],
       )
      ],
    );
  }
}
