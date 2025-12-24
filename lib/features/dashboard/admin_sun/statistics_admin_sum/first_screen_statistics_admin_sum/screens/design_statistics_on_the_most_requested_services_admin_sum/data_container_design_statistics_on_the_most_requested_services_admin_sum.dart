import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_statistics_on_the_most_requested_services_admin_sum/digram_design_statistics_on_the_most_requested_services_admin_sum.dart';
import '../../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_statistics_on_the_most_requested_services_admin_sum/select_from_to_container_design_statistics_on_the_most_requested_services_admin_sum.dart';
import '../../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/first_screen_statistics_admin_sum/screens/design_statistics_on_the_most_requested_services_admin_sum/title_container_design_statistics_on_the_most_requested_services_admin_sum.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/custom_widget/color_circle_with_title_and_number_widget.dart';

class DataContainerDesignStatisticsOnTheMostRequestedServicesAdminSum extends StatelessWidget {
  const DataContainerDesignStatisticsOnTheMostRequestedServicesAdminSum({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Column(
        spacing: 5,
        children: [
          TitleContainerDesignStatisticsOnTheMostRequestedServicesAdminSum(),
          SelectFromToContainerDesignStatisticsOnTheMostRequestedServicesAdminSum(),
          Row(
            children: [
              Expanded(
                child: DigramDesignStatisticsOnTheMostRequestedServicesAdminSum(),
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
        ],
      ),
    );
  }
}
