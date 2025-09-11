import 'package:flutter/material.dart';
import 'package:sun_system_app/features/wallet_bonus_send_code_to_friend/wallet_for_wallet_bonus_send_code_to_friend/ui/wallet_for_wallet_bonus_send_code_to_friend.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/warranty/warranty_subscription/ui/warranty_subscription.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class WalletDoneForWalletBonusSendCodeToFriend extends StatefulWidget {
  const WalletDoneForWalletBonusSendCodeToFriend({super.key});

  @override
  State<WalletDoneForWalletBonusSendCodeToFriend> createState() => _WalletDoneForWalletBonusSendCodeToFriendState();
}

class _WalletDoneForWalletBonusSendCodeToFriendState extends State<WalletDoneForWalletBonusSendCodeToFriend> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      if (!mounted) return;
      useNavigateToPageWidget(
        context,
        const WalletForWalletBonusSendCodeToFriend(),
        closeSheet: true,
        type:NavigateType.removePrevious,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImageKeys.done_star),
            const SizedBox(height: 20),
            TextInAppWidget(
              text: AppLanguageKeys.balanceChargedSuccessfully,
              textSize: 20,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor: AppColors.darkColor,
            ),
          ],
        ),
      ),
    );
  }
}