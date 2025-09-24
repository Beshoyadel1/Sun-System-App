import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/first_container_in_list_data_first_screen_booking_car_batteries/first_row_in_stack_data_in_first_container_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../features/car_batteries/first_screen_car_batteries/screens/first_container_in_list_data_first_screen_booking_car_batteries/second_row_in_stack_data_in_first_container_in_list_data_first_screen_booking_car_batteries.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class StackDataInFirstContainerInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const StackDataInFirstContainerInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImageKeys.service_test,),
        Column(
          spacing: 30,
          children: [
            FirstRowInStackDataInFirstContainerInListDataFirstScreenBookingCarBatteries(),
            SecondRowInStackDataInFirstContainerInListDataFirstScreenBookingCarBatteries()
          ],
        ),
      ],
    );
  }
}
