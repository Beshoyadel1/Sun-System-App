import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/dashboard/permissions/first_screen_permissions/logic/option_dashboard_cubit.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class TextWithTextFormFieldAsColumnWidget extends StatelessWidget {
  final String text, hint;
  final List<String>? options;
  final TextEditingController textFormController = TextEditingController();

  TextWithTextFormFieldAsColumnWidget({
    super.key,
    required this.text,
    required this.hint,
    this.options,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInAppWidget(
            text: text,
            textSize: 13,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.blackColor,
          ),
          const SizedBox(height: 8),

          options != null && options!.isNotEmpty
              ? BlocProvider(
                create: (_) => OptionDashboardCubit(),
                child: BlocBuilder<OptionDashboardCubit, String?>(
                            buildWhen: (previous, current) => previous != current,
                            builder: (context, selectedOption) {
                return SizedBox(
                  height: 50,
                  child: DropdownButtonFormField<String>(
                    isExpanded: false,
                    value: selectedOption,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    hint: TextInAppWidget(
                      text: hint,
                      textSize: 13,
                      fontWeightIndex: FontSelectionData.regularFontFamily,
                      textColor: AppColors.darkColor.withOpacity(0.4),
                    ),
                    items: options!
                        .map((option) => DropdownMenuItem(
                      value: option,
                      child: TextInAppWidget(
                        text: option,
                        textSize: 13,
                        fontWeightIndex:
                        FontSelectionData.regularFontFamily,
                        textColor: AppColors.blackColor,
                      ),
                    ))
                        .toList(),
                    onChanged: (value) {
                      context.read<OptionDashboardCubit>().selectOption(value);
                      textFormController.text = value ?? "";
                    },
                  ),
                );
                            },
                          ),
              )
              : TextFormFieldWidget(
                textFormController: textFormController,
                fillColor: AppColors.transparent,
                borderColor: AppColors.darkColor.withOpacity(0.2),
                hintText: hint,
                hintTextSize: 11,
                hintTextColor: AppColors.darkColor.withOpacity(0.4),
                textSize: 11,
                contentPadding: EdgeInsetsGeometry.all(5),
                textFormHeight: 50,
          ),
        ],
      ),
    );
  }
}
