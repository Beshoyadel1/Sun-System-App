import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../features/car_batteries/confirm_service_booking_car_batteries/screens/container_service_in_list_data_confirm_service_booking_car_batteries/column_in_second_row_in_container_service_in_list_data_confirm_service_booking_car_batteries.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';

class SecondRowInContainerServiceInListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  const SecondRowInContainerServiceInListDataConfirmServiceBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.pinkColor,
          child: Image.asset(AppImageKeys.test50,width: 25,),
        ),
        ColumnInSecondRowInContainerServiceInListDataConfirmServiceBookingCarBatteries()
      ],
    );
  }
}
