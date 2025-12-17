import 'package:flutter/cupertino.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_fuel_consumption_rate/total_consumption_part_fuel_consumption_rate.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_fuel_consumption_rate/design_chart_fuel_consumption_rate.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/custom_widget/color_circle_with_title_and_number_widget.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_fuel_consumption_rate/title_container_part_fuel_consumption_rate.dart';

class DataContainerPartFuelConsumptionRate extends StatelessWidget {
  const DataContainerPartFuelConsumptionRate({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        children: [
          TitleContainerPartFuelConsumptionRate(),
          DesignChartFuelConsumptionRate(percentage: 67),
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
          TotalConsumptionPartFuelConsumptionRate()
        ],
      ),
    );
  }
}
