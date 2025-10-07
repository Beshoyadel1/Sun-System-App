import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/dashboard/permissions/first_screen_permissions/logic/check_box_with_text_cubit.dart';

class CheckBoxWithText extends StatelessWidget {
  final String text;
  final String? imageSelect;
  const CheckBoxWithText({super.key,
    required this.text,
    this.imageSelect
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CheckBoxWithTextCubit(),
      child: BlocBuilder<CheckBoxWithTextCubit, bool>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, isChecked) {
          return Flexible(
            child: Row(
              spacing: 5,
              children: [
                Checkbox(
                  activeColor: AppColors.orangeColor,
                  value: isChecked,
                  onChanged: (value) {
                    context.read<CheckBoxWithTextCubit>().toggle(value ?? false);
                  },
                ),
                imageSelect != null ?
                Flexible(
                  child: Opacity(
                      opacity:isChecked? 1:0.5,
                      child: Column(
                        spacing: 5,
                        children: [
                          Image.asset(imageSelect!),
                          TextInAppWidget(
                            text: text,
                            textSize: 11,
                            fontWeightIndex: FontSelectionData.regularFontFamily,
                            textColor: AppColors.blackColor,
                          ),
                        ],
                      )
                  ),
                )
                    :
                Expanded(
                  child: TextInAppWidget(
                    text: text,
                    textSize: 11,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor:isChecked ? AppColors.blackColor : AppColors.greyColor,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
