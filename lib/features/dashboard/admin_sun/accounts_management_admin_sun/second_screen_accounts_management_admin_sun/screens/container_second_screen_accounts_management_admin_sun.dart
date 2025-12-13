import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/second_screen_accounts_management_admin_sun/screens/list_data_second_screen_accounts_management_admin_sun.dart';
import '../../../../../../core/theming/colors.dart';

class ContainerSecondScreenAccountsManagementAdminSun extends StatelessWidget {
  const ContainerSecondScreenAccountsManagementAdminSun({super.key});

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
      child: ListDataSecondScreenAccountsManagementAdminSun(),
    );
  }
}