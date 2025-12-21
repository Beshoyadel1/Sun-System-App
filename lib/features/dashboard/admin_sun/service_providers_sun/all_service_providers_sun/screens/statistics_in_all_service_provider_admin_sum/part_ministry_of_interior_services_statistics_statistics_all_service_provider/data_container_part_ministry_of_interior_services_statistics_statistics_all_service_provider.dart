import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_ministry_of_interior_services_statistics_statistics_all_service_provider/select_from_to_container_part_ministry_of_interior_services_statistics_statistics_all_service_provider.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_ministry_of_interior_services_statistics_statistics_all_service_provider/design_chart_part_ministry_of_interior_services_statistics_statistics_all_service_provider.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_ministry_of_interior_services_statistics_statistics_all_service_provider/title_container_part_ministry_of_interior_services_statistics_statistics_all_service_provider.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/custom_widget/color_circle_with_title_and_number_widget.dart';

class DataContainerPartMinistryOfInteriorServicesStatisticsStatisticsAllServiceProvider extends StatelessWidget {
  const DataContainerPartMinistryOfInteriorServicesStatisticsStatisticsAllServiceProvider({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Column(
        spacing: 5,
        children: [
          TitleContainerPartMinistryOfInteriorServicesStatisticsStatisticsAllServiceProvider(),
          SelectFromToContainerPartMinistryOfInteriorServicesStatisticsStatisticsAllServiceProvider(),
          Flexible(
            child: Row(
              children: [
                Expanded(
                  child: DesignChartPartMinistryOfInteriorServicesStatisticsStatisticsAllServiceProvider(),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: const [
                    ColorCircleWithTitleAndNumberWidget(
                      number: '60%',
                      text: 'صيانات داخلية',
                      isContainerNumber: true,
                      textSizeTitle: 10,
                      textSizeNumber: 10,
                    ),
                    ColorCircleWithTitleAndNumberWidget(
                      color: AppColors.orangeColor,
                      text: 'قطع غيار',
                      number: '60%',
                      isContainerNumber: true,
                      textSizeTitle: 10,
                      textSizeNumber: 10,
                    ),
                    ColorCircleWithTitleAndNumberWidget(
                      color: AppColors.cyanColor,
                      text: 'خدمات متنقلة',
                      number: '60%',
                      isContainerNumber: true,
                      textSizeTitle: 10,
                      textSizeNumber: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
