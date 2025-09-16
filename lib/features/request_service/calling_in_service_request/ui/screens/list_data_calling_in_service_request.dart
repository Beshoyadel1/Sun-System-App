import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/calling_in_service_request/ui/screens/data_calling_design.dart';

class ListDataCallingInServiceRequest extends StatelessWidget {
  const ListDataCallingInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(AppImageKeys.person101,width: 80,),
        TextInAppWidget(
          text: 'مندوب الصيانة',
          textSize: 18,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
        SizedBox(height: 20,),
        DataCallingDesign()
      ],
    );
  }
}
