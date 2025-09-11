import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';

class FirstPartWalletPaymentForWalletBonusSendCodeToFriendView extends StatefulWidget {
  const FirstPartWalletPaymentForWalletBonusSendCodeToFriendView({super.key});

  @override
  State<FirstPartWalletPaymentForWalletBonusSendCodeToFriendView> createState() => _FirstPartWalletPaymentForWalletBonusSendCodeToFriendViewState();
}

class _FirstPartWalletPaymentForWalletBonusSendCodeToFriendViewState extends State<FirstPartWalletPaymentForWalletBonusSendCodeToFriendView> {
  late TextEditingController textFormController;

  @override
  void initState() {
    super.initState();
    textFormController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.currentBalance,
          textSize: 16,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.darkColor,
        ),

        TextFormFieldWidget(
          isDigitDot: true,
          textFormController: textFormController,
          fillColor: AppColors.transparent,
          borderColor: AppColors.darkColor.withOpacity(0.2),
          hintTextSize: 15,
          hintTextColor: AppColors.darkColor.withOpacity(0.4),
          textSize: 15,
          textFormWidth: 500,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        ),
      ],
    );
  }
}
