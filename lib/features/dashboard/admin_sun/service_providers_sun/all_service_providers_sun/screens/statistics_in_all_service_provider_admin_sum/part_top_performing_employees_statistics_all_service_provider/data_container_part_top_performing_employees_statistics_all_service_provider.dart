import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_top_performing_employees_statistics_all_service_provider/list_data_view_container_number_request_emp_data.dart';
import '../../../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../../../../core/theming/colors.dart';

class DataContainerPartTopPerformingEmployeesStatisticsAllServiceProvider extends StatelessWidget {
  const DataContainerPartTopPerformingEmployeesStatisticsAllServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        TitleWithSubTitle(
          spacing: 5,
          title: 'الموظفون الاعلي أداءا',
          titleColor: AppColors.blackColor,
          textSizeTitle: 13,
          subTitle: 'ترتيب الموظفين الاعلي استقبال الطلبات',
          subTitleColor: AppColors.greyColor,
          textSizeSubTitle: 11,
        ),
        ListDataViewContainerNumberRequestEmpData()
      ],
    );
  }
}
