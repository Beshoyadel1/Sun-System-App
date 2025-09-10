import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/Insurance/finish_third_payment_details/ui/finish_third_payment_details.dart';
import '../../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_state.dart';
import '../../../../../features/Insurance/custom_widget/app_snack_bar.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';

class LastButtonContainerPageChoosePaymentDetailsWidget extends StatelessWidget {
  final void Function()? onTap;
  const LastButtonContainerPageChoosePaymentDetailsWidget({this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: const BoxDecoration(
        color: AppColors.orangeColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child:ButtonWidget(
            text: AppLanguageKeys.payment,
            textColor: AppColors.darkColor,
            buttonColor: AppColors.whiteColor,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            heightContainer: 50,
            widthContainer: 300,
            borderRadius: 20,
            onTap:onTap
          ),
    );
  }
}
