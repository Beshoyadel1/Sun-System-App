import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/insurance_admin_sun/details_insurance_admin_sun/details_insurance_admin_sun.dart';
import '../../../../../../../features/dashboard/admin_sun/insurance_admin_sun/second_screen_insurance_admin_sun/screens/all_second_screen_insurance_admin_sun_list/container_data_order_in_all_second_screen_insurance_admin_sun_list.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';

class AllSecondScreenInsuranceAdminSunList extends StatelessWidget {
  const AllSecondScreenInsuranceAdminSunList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerDataOrderInAllSecondScreenInsuranceAdminSunList(
          isActive: true,
            // onTap: (){
            //   Navigator.of(context).push(
            //     NavigateToPageWidget(DetailsInsuranceAdminSun()),
            //   );
            // }
        ),
        ContainerDataOrderInAllSecondScreenInsuranceAdminSunList(
          isInActive: true,
            // onTap: (){
            //   Navigator.of(context).push(
            //     NavigateToPageWidget(DetailsInsuranceAdminSun()),
            //   );
            // }
        ),
        ContainerDataOrderInAllSecondScreenInsuranceAdminSunList(
            isActive: true,
            // onTap: (){
            //   Navigator.of(context).push(
            //     NavigateToPageWidget(DetailsInsuranceAdminSun()),
            //   );
            // }
        ),
        ContainerDataOrderInAllSecondScreenInsuranceAdminSunList(
            isInActive: true,
            // onTap: (){
            //   Navigator.of(context).push(
            //     NavigateToPageWidget(DetailsInsuranceAdminSun()),
            //   );
            // }
        ),
        ContainerDataOrderInAllSecondScreenInsuranceAdminSunList(
            isActive: true,
            // onTap: (){
            //   Navigator.of(context).push(
            //     NavigateToPageWidget(DetailsInsuranceAdminSun()),
            //   );
            // }
        ),
        ContainerDataOrderInAllSecondScreenInsuranceAdminSunList(
            isInActive: true,
            // onTap: (){
            //   Navigator.of(context).push(
            //     NavigateToPageWidget(DetailsInsuranceAdminSun()),
            //   );
            // }
        ),
      ],
    );
  }
}