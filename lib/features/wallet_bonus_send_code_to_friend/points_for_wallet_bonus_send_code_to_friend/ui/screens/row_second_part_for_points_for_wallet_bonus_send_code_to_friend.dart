import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/wallet_bonus_send_code_to_friend/wallet_payment_for_wallet_bonus_send_code_to_friend/ui/wallet_payment_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../features/warranty/custom_widget/show_modal_bottom_sheet_widget.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';

class RowSecondPartForPointsForWalletBonusSendCodeToFriend extends StatefulWidget {
  const RowSecondPartForPointsForWalletBonusSendCodeToFriend({super.key});

  @override
  State<RowSecondPartForPointsForWalletBonusSendCodeToFriend> createState() => _RowSecondPartForPointsForWalletBonusSendCodeToFriendState();
}

class _RowSecondPartForPointsForWalletBonusSendCodeToFriendState extends State<RowSecondPartForPointsForWalletBonusSendCodeToFriend> {

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: TextInAppWidget(
            text: AppLanguageKeys.pointsDetails,
            textSize: 12,
            fontWeightIndex: FontSelectionData.mediumFontFamily,
            textColor: AppColors.darkColor,
          ),
        ),
        ButtonWidget(
          text:AppLanguageKeys.viewAll,
          textColor: AppColors.whiteColor,
          buttonColor: AppColors.blueColor,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          heightContainer: 40,
          widthContainer:100,
          borderRadius: 30,
          onTap: (){
          },
        )
      ],
    );
  }
}
