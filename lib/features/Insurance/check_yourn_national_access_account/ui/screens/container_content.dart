import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/your_insurance_information/ui/your_insurance_information.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/check_yourn_national_access_account/logic/container_check_your_national_cubit.dart';
import '../../../../../features/Insurance/check_yourn_national_access_account/ui/screens/container_number.dart';
import '../../../../../features/Insurance/check_yourn_national_access_account/ui/screens/image_label_divider_container_check_your_national_access_account.dart';
import '../../../../../features/Insurance/check_yourn_national_access_account/ui/screens/label_text_form_field_container_check_your_national_access_account.dart';

class ContainerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.centerRight,
      child: Container(
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
          spacing: 20,
          children: [
            ImageLabelDividerContainerCheckYourNationalAccessAccount(),
        BlocListener<ContainerCheckYourNationalCubit, ButtonState>(
          listenWhen: (previous, current) => current == ButtonState.navigated,
          listener: (context, state) {
            Navigator.of(context).push(
              NavigateToPageWidget(
                YourInsuranceInformation(),
              ),
            );
          },
          child: BlocBuilder<ContainerCheckYourNationalCubit, ButtonState>(
            buildWhen: (previous, current) =>
            current == ButtonState.initial || current == ButtonState.replaced,
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  if (state == ButtonState.initial)
                    LabelTextFormFieldContainerCheckYourNationalAccessAccount()
                  else if (state == ButtonState.replaced)
                    ContainerNumber(),
                  ButtonWidget(
                    widthContainer: 500,
                    text: AppLanguageKeys.verifyAbsher,
                    textColor: AppColors.whiteColor,
                    buttonColor: AppColors.cyanColor,
                    textSize: 13,
                    borderRadius: 30,
                    onTap: () {
                      context.read<ContainerCheckYourNationalCubit>().onButtonPressed();
                    },
                  ),
                ],
              );
            },
          ),
        ),
          ],
        ),
      ),
    );
  }
}
