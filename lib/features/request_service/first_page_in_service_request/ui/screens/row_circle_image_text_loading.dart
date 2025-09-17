import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/features/request_service/first_page_in_service_request/logic/select_service_cubit/service_selection_cubit.dart';
import 'package:sun_system_app/features/request_service/first_page_in_service_request/logic/select_service_cubit/service_selection_state.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/profile/custom_widget/first_name_textfield_personal_data_widget.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/select_the_type_of_service.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class RowCircleImageTextLoading extends StatelessWidget {

  const RowCircleImageTextLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedService = ServiceSelectionCubit().getSelectedService();

    if (selectedService == null) {
      return const SizedBox();
    }

    return Row(
      spacing: 10,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 15),
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.pinkColor.withOpacity(0.8),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.darkColor.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Image.asset(selectedService.imgPathSelect, height: 30),
        ),
        TextInAppWidget(
          text: selectedService.text,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
      ],
    );
  }
}
