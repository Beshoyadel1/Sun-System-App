import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/YourInsuranceInformation/ui/YourInsuranceInformation.dart';
import '../../../../../features/Insurance/CustomWidget/EndButtonScreen.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';

import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/CheckYourNationalAccessAccount/logic/ContainerCheckYourNationalCubit.dart';
import '../../../../../features/Insurance/CheckYourNationalAccessAccount/ui/CheckYourNationalAccessAccount.dart';
import '../../../../../features/Insurance/CheckYourNationalAccessAccount/ui/screens/ContainerNumber.dart';
import '../../../../../features/Insurance/CheckYourNationalAccessAccount/ui/screens/ImageLabelDividerContainerCheckYourNationalAccessAccount.dart';
import '../../../../../features/Insurance/CheckYourNationalAccessAccount/ui/screens/LabelTextFormFieldContainerCheckYourNationalAccessAccount.dart';

class ContainerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.scaffoldColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.darkColor.withOpacity(0.3), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageLabelDividerContainerCheckYourNationalAccessAccount(),
          BlocBuilder<ContainerCheckYourNationalCubit, ButtonState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (state == ButtonState.initial)
                    LabelTextFormFieldContainerCheckYourNationalAccessAccount()
                  else if (state == ButtonState.replaced)
                    ContainerNumber(),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                    widthContainer: 500,
                    text: AppLanguageKeys.verifyAbsher,
                    textColor: AppColors.whiteColor,
                    buttonColor: AppColors.cyanColor,
                    textSize: 13,
                    borderRadius: 30,
                    onTap: () {
                      final cubit = context.read<ContainerCheckYourNationalCubit>();
                      cubit.onButtonPressed();
                      if (cubit.state == ButtonState.navigated) {
                        Navigator.of(context).push(
                          NavigateToPageWidget(
                            YourInsuranceInformation(),
                          ),
                        );
                      }
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
