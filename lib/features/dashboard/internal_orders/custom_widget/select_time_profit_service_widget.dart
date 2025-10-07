import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/dashboard/permissions/first_screen_permissions/logic/option_dashboard_cubit.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class SelectTimeProfitServiceWidget extends StatelessWidget {
  final String hint;
  final List<String>? options;
  final TextEditingController textFormController = TextEditingController();

  SelectTimeProfitServiceWidget({
    super.key,
    required this.hint,
    this.options,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OptionDashboardCubit(),
      child: BlocBuilder<OptionDashboardCubit, String?>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, selectedOption) {
          return SizedBox(
            height: 35,
            width: 130,
            child: InputDecorator(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.blueColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  dropdownColor: AppColors.blueColor,
                  value: selectedOption,
                  hint: TextInAppWidget(
                    text: hint,
                    textSize: 13,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor: AppColors.whiteColor,
                  ),
                  items: options!
                      .map(
                        (option) => DropdownMenuItem(
                      value: option,
                      child: TextInAppWidget(
                        text: option,
                        textSize: 13,
                        fontWeightIndex: FontSelectionData.regularFontFamily,
                        textColor: AppColors.whiteColor,
                      ),
                    ),
                  )
                      .toList(),
                  iconEnabledColor: Colors.white,
                  onChanged: (value) {
                    context.read<OptionDashboardCubit>().selectOption(value);
                    textFormController.text = value ?? "";
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
