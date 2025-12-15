import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/insurance_admin_sun/second_screen_insurance_admin_sun/screens/first_part_screen/list_data_container_first_part_screen.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerFirstPartScreen extends StatelessWidget {
  const ContainerFirstPartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.greyColor.withOpacity(0.3)
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListDataContainerFirstPartScreen(),
    );
  }
}