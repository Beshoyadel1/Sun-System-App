import 'package:flutter/material.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class TitleWithSubTitleInCarDetails2EmpAdminSun extends StatelessWidget {
  const TitleWithSubTitleInCarDetails2EmpAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text:AppLanguageKeys.carSpecifications,
          textSize: 18,
          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
          textColor:AppColors.greyColor,
        ),
        TextInAppWidget(
          text:'أودي A6 موديل 2018، ماشي 125 ألف كم، أسود من الخارج وداخلي بيج جلد، جير أوتوماتيك، 4 سلندر، بحالة ممتازة بدون حوادث. مزودة بدخول ذكي، تشغيل بصمة، شاشة، كاميرا خلفية، حساسات، وكراسي كهربائية. فحص واستمارة سارية، والصيانة الدورية منتظمة.',
          textSize: 17,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.blackColor,
        ),
      ],
    );
  }
}
