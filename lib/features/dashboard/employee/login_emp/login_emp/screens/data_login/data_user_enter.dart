import 'package:flutter/cupertino.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../features/dashboard/Admin/permissions/custom_widget/text_with_text_form_field_as_column_widget.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class DataUserEnter extends StatelessWidget {
  const DataUserEnter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 50,
          children: [
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.name,
              hint: '',
              borderRadius: 5,
              textSize: 15,
            ),
          ],
        ),
        Row(
          spacing: 50,
          children: [
            TextWithTextFormFieldAsColumnWidget(
              text: AppLanguageKeys.password,
              hint: '',
              borderRadius: 5,
              textSize: 15,
            ),
          ],
        ),
        TextInAppWidget(
          text:AppLanguageKeys.forgotPassword,
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.blackColor,
        ),
        ButtonWidget(
          text:AppLanguageKeys.login,
          textColor: AppColors.whiteColor,
          buttonColor: AppColors.blueColor,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          heightContainer: 40,
          widthContainer:800,
          borderRadius: 30,
          onTap: (){},
        ),
      ],
    );
  }
}