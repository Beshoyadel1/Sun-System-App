import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/mobile_service_in_service_request/ui/screens/container_service_request/first_row_container_service_request_mobile_service.dart';
import 'package:sun_system_app/features/warranty/custom_widget/row_number_coin_widget.dart';


class FifthRowContainerInvoiceMobileServiceInServiceRequest extends StatelessWidget {
  const FifthRowContainerInvoiceMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 5,
          children: [
            TextInAppWidget(
              text: AppLanguageKeys.paidBy,
              textSize: 10,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.darkColor,
            ),
            Image.asset(AppImageKeys.visa3,width: 80,)
          ],
        ),
        TextInAppWidget(
          text: '2 يناير ',
          textSize: 13,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.orangeColor,
        ),
      ],
    );
  }
}
