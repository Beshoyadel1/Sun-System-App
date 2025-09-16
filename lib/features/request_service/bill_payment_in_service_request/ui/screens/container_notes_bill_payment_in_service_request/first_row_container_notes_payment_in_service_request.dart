import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/first_row_container_notes_payment_in_service_request.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/row_icon_edit_orange.dart';
import 'package:sun_system_app/features/request_service/custom_widget/container_image_background_pink_widget.dart';
import 'package:sun_system_app/features/warranty/custom_widget/row_number_coin_widget.dart';

class FirstRowContainerNotesPaymentInServiceRequest extends StatelessWidget {
  const FirstRowContainerNotesPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.notes,
          textSize: 11,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        RowIconEditOrange(),
      ],
    );
  }
}
