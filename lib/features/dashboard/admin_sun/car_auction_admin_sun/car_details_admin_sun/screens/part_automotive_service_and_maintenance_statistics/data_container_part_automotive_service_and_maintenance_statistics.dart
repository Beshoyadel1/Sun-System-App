import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_automotive_service_and_maintenance_statistics/design_chart_automotive_service_and_maintenance_statistics.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_automotive_service_and_maintenance_statistics/title_container_automotive_service_and_maintenance_statistics.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/custom_widget/color_circle_with_title_and_number_widget.dart';

class DataContainerPartAutomotiveServiceAndMaintenanceStatistics extends StatelessWidget {
  const DataContainerPartAutomotiveServiceAndMaintenanceStatistics({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        children: [
          TitleContainerAutomotiveServiceAndMaintenanceStatistics(),
          DesignChartAutomotiveServiceAndMaintenanceStatistics(),
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
