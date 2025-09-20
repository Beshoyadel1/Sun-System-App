import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class FirstNameTextfieldIdentityVerificationNewWidget extends StatelessWidget {
  final String name;
  final String? hint;

  const FirstNameTextfieldIdentityVerificationNewWidget({required this.name,this.hint});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textFormController = TextEditingController();
    return Column(
      spacing: 7,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          TextInAppWidget(
          text:name,
          textSize: 12,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor:AppColors.greyColor,
        ),
        TextFormFieldWidget(
          textFormController: textFormController,
          fillColor: AppColors.transparent,
          borderColor: AppColors.darkColor.withOpacity(0.2),
          hintText:hint,
          contentPadding: EdgeInsetsGeometry.all(10),
          hintTextSize: 10,
          hintTextColor: AppColors.darkColor.withOpacity(0.4),
          textSize: 15,
          textFormWidth: 500,
        ),
      ],
    );
  }
}
