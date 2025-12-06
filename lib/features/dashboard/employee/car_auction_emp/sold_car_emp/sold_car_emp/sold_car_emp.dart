import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_details_car/container_sold.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/sold_car_emp/sold_car_emp/screens/first_part_in_sold_car_emp.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/sold_car_emp/sold_car_emp/screens/second_part_in_sold_car_emp.dart';
import '../../../../../../core/theming/colors.dart';


class SoldCarEmp extends StatelessWidget {
  const SoldCarEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            color: AppColors.scaffoldColor,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 30,
            children: [
              SizedBox(
                height: 20,
              ),
              FirstPartInSoldCarEmp(),
              SecondPartInSoldCarEmp(),
              ContainerSold()
            ],
          ),
        ),
      ),
    );
  }
}

