import 'package:flutter/cupertino.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';

class TextTransferringTheBalanceDetailsInsuranceAdminSun extends StatelessWidget {
  const TextTransferringTheBalanceDetailsInsuranceAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return TextInAppWidget(
      text:'تحويل رصيد الخاص للمرك “أسم المركز”',
      textSize: 17,
      fontWeightIndex: FontSelectionData.semiBoldFontFamily,
      textColor:AppColors.blackColor,
    );
  }
}
