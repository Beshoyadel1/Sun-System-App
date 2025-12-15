import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_edit_delete_message_admin_sun/data_container_part_edit_delete_message_admin_sun.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerPartEditDeleteMessageAdminSun extends StatelessWidget {
  const ContainerPartEditDeleteMessageAdminSun({super.key});

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
      child: DataContainerPartEditDeleteMessageAdminSun(),
    );
  }
}
