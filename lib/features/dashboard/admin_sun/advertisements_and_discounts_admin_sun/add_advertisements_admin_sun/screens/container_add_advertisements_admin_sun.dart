import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/admin_sun/advertisements_and_discounts_admin_sun/add_advertisements_admin_sun/screens/list_data_add_advertisements_admin_sun.dart';
import '../../../../../../core/theming/colors.dart';

class ContainerAddAdvertisementsAdminSun extends StatelessWidget {
  const ContainerAddAdvertisementsAdminSun({super.key});

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
      child: ListDataAddAdvertisementsAdminSun(),
    );
  }
}