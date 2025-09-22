import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/row_icon_edit_orange.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class SecondRowInContainerModelCarInListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  const SecondRowInContainerModelCarInListDataConfirmServiceBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        TextInAppWidget(
          text:'CR  - V',
          textSize: 14,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.darkColor,
        ),
        Image.asset(AppImageKeys.car1)
      ],
    );
  }
}
