import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/Insurance/FinishThirdPaymentDetails/ui/FinishThirdPaymentDetails.dart';
import '../../../../../../features/Insurance/PageChoosePaymentDetails/logic/RadioPaymentState.dart';
import '../../../../../features/Insurance/CustomWidget/AppSnackBar.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/PageChoosePaymentDetails/logic/RadioPaymentCubit.dart';

class LastButtonContainerPageChoosePaymentDetails extends StatelessWidget {
  final void Function()? onTap;
  const LastButtonContainerPageChoosePaymentDetails({this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: const BoxDecoration(
        color: AppColors.orangeColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),

      child: BlocBuilder<RadioPaymentCubit, RadioPaymentState>(
        builder: (context, state) {
          return ButtonWidget(
            text: AppLanguageKeys.payment,
            textColor: AppColors.darkColor,
            buttonColor: AppColors.whiteColor,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            heightContainer: 50,
            widthContainer: 300,
            borderRadius: 20,
            onTap: () {
              if (state.selectedIndex != null && state.selectedImage != null) {
                Navigator.of(context).push(
                  NavigateToPageWidget(
                    FinishThirdPaymentDetails(
                      selectedImage: state.selectedImage!,
                    ),
                  ),
                );
              } else {
                AppSnackBarWidget.show(
                  context,
                  AppLanguageKeys.selectPaymentOptionFirst,
                );
              }
            },
          );
        },
      ),
    );
  }
}
