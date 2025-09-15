import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/warranty/custom_widget/row_number_coin_widget.dart';

class ColumnInRowImageDataInContainerService extends StatelessWidget {
  const ColumnInRowImageDataInContainerService ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.mobileMaintenance,
          textSize: 11,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
        RowNumberCoinWidget(
            numberText: '450.00',
            sizeText: 12,
            imageSrc: AppImageKeys.coin
        )
      ],
    );
  }
}
