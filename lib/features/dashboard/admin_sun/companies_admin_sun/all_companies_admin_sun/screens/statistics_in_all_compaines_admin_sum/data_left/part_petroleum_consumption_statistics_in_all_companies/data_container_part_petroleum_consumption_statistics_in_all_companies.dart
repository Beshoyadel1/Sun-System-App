import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_left/part_petroleum_consumption_statistics_in_all_companies/design_chart_fuel_consumption_all_companies.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_left/part_petroleum_consumption_statistics_in_all_companies/title_container_part_petroleum_consumption_statistics_in_all_companies.dart';
import '../../../../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/data_left/part_petroleum_consumption_statistics_in_all_companies/total_consumption_part_petroleum_consumption_statistics_in_all_companies.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/custom_widget/color_circle_with_title_and_number_widget.dart';

class DataContainerPartPetroleumConsumptionStatisticsInAllCompanies extends StatelessWidget {
  const DataContainerPartPetroleumConsumptionStatisticsInAllCompanies({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 20,
        children: [
          TitleContainerPartPetroleumConsumptionStatisticsInAllCompanies(),
          DesignChartFuelConsumptionAllCompanies(percentage: 67),
          Column(
            spacing: 10,
            children: [
              ColorCircleWithTitleAndNumberWidget(),
              ColorCircleWithTitleAndNumberWidget(
                color: AppColors.orangeColor,
                text: 'توفير الاستهلاك',
                number: '67%',
              )
            ],
          ),
          TotalConsumptionPartPetroleumConsumptionStatisticsInAllCompanies()
        ],
      ),
    );
  }
}
