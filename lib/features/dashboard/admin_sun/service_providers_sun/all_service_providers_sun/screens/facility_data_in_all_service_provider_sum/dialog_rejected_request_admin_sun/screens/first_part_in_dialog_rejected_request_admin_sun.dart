import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../../features/dashboard/Admin/service_settings/custom_widget/text_with_text_form_field_as_column2_widget.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../../core/theming/text_styles.dart';

class FirstPartInDialogRejectedRequestAdminSun extends StatelessWidget {
  const FirstPartInDialogRejectedRequestAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        TextInAppWidget(
          text: ' رفض طلب رقم #452',
          textSize: 20,
          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
          textColor: AppColors.blackColor,
        ),
        TextWithTextFormFieldAsColumn2Widget(text: 'عنوان الرفض', hint: ''),
        TextWithTextFormFieldAsColumn2Widget(
          text: 'الملاحظة',
          hint: '',
          maxLines: 5,
        ),
      ],
    );
  }
}
