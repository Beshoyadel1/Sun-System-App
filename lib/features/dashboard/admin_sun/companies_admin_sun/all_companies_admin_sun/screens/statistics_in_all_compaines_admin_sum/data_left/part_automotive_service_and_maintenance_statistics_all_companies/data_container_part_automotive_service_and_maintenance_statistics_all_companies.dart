import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_left/part_automotive_service_and_maintenance_statistics_all_companies/design_chart_automotive_service_and_maintenance_statistics_in_all_companies.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_left/part_automotive_service_and_maintenance_statistics_all_companies/title_container_automotive_service_and_maintenance_statistics_in_all_companies.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/custom_widget/color_circle_with_title_and_number_widget.dart';

class DataContainerPartAutomotiveServiceAndMaintenanceStatisticsAllCompanies extends StatelessWidget {
  const DataContainerPartAutomotiveServiceAndMaintenanceStatisticsAllCompanies({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 20,
        children: [
          TitleContainerAutomotiveServiceAndMaintenanceStatisticsInAllCompanies(),
          DesignChartAutomotiveServiceAndMaintenanceStatisticsInAllCompanies(),
          Column(
            spacing: 10,
            children: [
              ColorCircleWithTitleAndNumberWidget(
                number: '17,439',
              ),
              ColorCircleWithTitleAndNumberWidget(
                color: AppColors.orangeColor,
                text: 'صيانة واصلاح',
                number: '9,478',
              ),
              ColorCircleWithTitleAndNumberWidget(
                color: AppColors.cyanColor,
                text: 'غسيل ونظافة',
                number: '18,197',
              ),
              ColorCircleWithTitleAndNumberWidget(
                color: AppColors.blueColor,
                text: 'طلب سطحة',
                number: '12,510',
              ),
              ColorCircleWithTitleAndNumberWidget(
                color: AppColors.darkBrownColor,
                text: 'قطع غيار',
                number: '14,406',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
