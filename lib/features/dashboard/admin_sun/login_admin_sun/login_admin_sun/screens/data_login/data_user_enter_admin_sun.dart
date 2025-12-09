import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import '../../../../../../../features/dashboard/Admin/service_settings/custom_widget/text_with_text_form_field_as_column2_widget.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class DataUserEnterAdminSun extends StatelessWidget {
  const DataUserEnterAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 940;
    return Column(
      spacing: 30,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWithTextFormFieldAsColumn2Widget(
          text: AppLanguageKeys.name,
          hint: '',
          borderRadius: 5,
          textSize: 15,
        ),
        TextWithTextFormFieldAsColumn2Widget(
          text: AppLanguageKeys.password,
          hint: '',
          borderRadius: 5,
          textSize: 15,
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
          buttonColor: AppColors.orangeColor,
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