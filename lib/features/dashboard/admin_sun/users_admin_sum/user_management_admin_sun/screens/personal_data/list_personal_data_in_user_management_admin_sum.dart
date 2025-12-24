import 'package:flutter/cupertino.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../features/dashboard/Admin/permissions/custom_widget/text_with_text_form_field_as_column_widget.dart';

class ListPersonalDataInUserManagementAdminSum extends StatelessWidget {
  const ListPersonalDataInUserManagementAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 900;
    return isMobile
        ? Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text: 'بيانات الشخصية',
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.orangeColor,
            ),
            Row(
              spacing: 10,
              children: [
                TextWithTextFormFieldAsColumnWidget(
                  text: 'اسم المستخدم',
                  hint: 'عمرو محي الدين',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: 'الجنسية',
                  hint: 'مصري',
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                TextWithTextFormFieldAsColumnWidget(
                  text: 'كلمة المرور',
                  hint: '***',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: 'الايميل',
                  hint: 'amr@gmail.com',
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                TextWithTextFormFieldAsColumnWidget(
                  text: 'رقم الهاتف',
                  hint: '+20000000',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: AppLanguageKeys.city,
                  hint: 'الرياض',
                ),
              ],
            ),
          ],
        )
        : Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text: 'بيانات الشخصية',
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.orangeColor,
            ),
            Row(
              spacing: 10,
              children: [
                TextWithTextFormFieldAsColumnWidget(
                  text: 'اسم المستخدم',
                  hint: 'عمرو محي الدين',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: 'الجنسية',
                  hint: 'مصري',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: 'كلمة المرور',
                  hint: '***',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: 'الايميل',
                  hint: 'amr@gmail.com',
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                TextWithTextFormFieldAsColumnWidget(
                  text: 'رقم الهاتف',
                  hint: '+20000000',
                ),
                TextWithTextFormFieldAsColumnWidget(
                  text: AppLanguageKeys.city,
                  hint: 'الرياض',
                ),
              ],
            ),
          ],
        );
  }
}
