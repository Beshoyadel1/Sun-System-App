import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_orders_digrams_statistics_all_service_provider/data_container_part_orders_digrams_statistics_all_service_provider.dart';
import '../../../../../../../../../core/theming/colors.dart';

class ContainerPartOrdersDigramsStatisticsAllServiceProvider extends StatelessWidget {
  const ContainerPartOrdersDigramsStatisticsAllServiceProvider({super.key});

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
      child: DataContainerPartOrdersDigramsStatisticsAllServiceProvider(),
    );
  }
}
