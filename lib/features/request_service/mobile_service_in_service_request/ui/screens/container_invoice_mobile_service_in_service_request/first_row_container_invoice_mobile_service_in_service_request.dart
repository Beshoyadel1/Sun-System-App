import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/mobile_service_in_service_request/ui/screens/container_service_request/first_row_container_service_request_mobile_service.dart';


class FirstRowContainerInvoiceMobileServiceInServiceRequest extends StatelessWidget {
  const FirstRowContainerInvoiceMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.invoice,
          textSize: 10,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.darkColor,
        ),
        Container(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10,vertical: 7),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: AppColors.greyColor,
            )
          ),
          child: TextInAppWidget(
            text: AppLanguageKeys.details,
            textSize: 10,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkColor,
          ),
        )
      ],
    );
  }
}
