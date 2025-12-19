import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/orders_in_all_companies_admin_sum/list_data_container_orders_in_all_companies_admin_sum.dart';
import '../../../../../../../../core/theming/colors.dart';

class ContainerOrdersInAllCompaniesAdminSum extends StatelessWidget {
  const ContainerOrdersInAllCompaniesAdminSum({super.key});

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
      child: ListDataContainerOrdersInAllCompaniesAdminSum(),
    );
  }
}
