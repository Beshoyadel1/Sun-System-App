import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/features/wallet_bonus_send_code_to_friend/custom_widget/row_date_text_money.dart';
import 'package:sun_system_app/features/wallet_bonus_send_code_to_friend/points_for_wallet_bonus_send_code_to_friend/ui/screens/row_second_part_for_points_for_wallet_bonus_send_code_to_friend.dart';
import 'package:sun_system_app/features/wallet_bonus_send_code_to_friend/wallet_for_wallet_bonus_send_code_to_friend/ui/screens/row_second_part_for_wallet_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';

class SecondPartForPointsForWalletBonusSendCodeToFriend extends StatelessWidget {
  const SecondPartForPointsForWalletBonusSendCodeToFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        RowSecondPartForPointsForWalletBonusSendCodeToFriend(),
        RowDateTextMoney(
          date: '1/1/2025',
          text: AppLanguageKeys.bonusPoints,
          money: '+ 10ريال',
        ),
        RowDateTextMoney(
          isPlus: false,
          date: '1/1/2025',
          text: AppLanguageKeys.redeemPointsService,
          money: '- 10ريال',
        ),
        RowDateTextMoney(
          date: '1/1/2025',
          text: AppLanguageKeys.rechargeFromVisaPoints,
          money: '+ 10ريال',
        ),
        RowDateTextMoney(
          isPlus: false,
          date: '1/1/2025',
          text: AppLanguageKeys.redeemPointsService,
          money: '- 10ريال',
        ),
      ],
    );
  }
}
