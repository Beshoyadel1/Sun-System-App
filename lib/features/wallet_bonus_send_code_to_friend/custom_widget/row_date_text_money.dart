import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/features/wallet_bonus_send_code_to_friend/wallet_for_wallet_bonus_send_code_to_friend/ui/screens/row_second_part_for_wallet_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';


class RowDateTextMoney extends StatelessWidget {
  final String date,text,money;
  final bool? isPlus;
  const RowDateTextMoney({
    super.key,
    required this.date,
    required this.text,
    required this.money,
    this.isPlus=true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text: date,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.greyColor,
            ),
            TextInAppWidget(
              text: text,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
            ),
          ],
        ),
        TextInAppWidget(
          text: money,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:isPlus!?AppColors.greenColor:AppColors.redColor,
        ),
      ],
    );
  }
}
