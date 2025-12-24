import 'package:flutter/cupertino.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/custom_widget/text_with_circle_container_color_widget.dart';

class ViewNumberCarsInDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies extends StatelessWidget {
  const ViewNumberCarsInDesignStatisticsOnTheNumberOfUsersAndMaintenanceCompanies({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        TextWithCircleContainerColorWidget(
          color: AppColors.orangeColor,
          title: 'سيارات المستخدمين',
          subTitle: '300 سيارة',
          paddingNumber: 7,
        ),
        TextWithCircleContainerColorWidget(
          color: AppColors.blueColor,
          title: 'سيارات الشركات',
          subTitle: '100 سيارة',
          paddingNumber: 7,
        )
      ],
    );
  }
}
