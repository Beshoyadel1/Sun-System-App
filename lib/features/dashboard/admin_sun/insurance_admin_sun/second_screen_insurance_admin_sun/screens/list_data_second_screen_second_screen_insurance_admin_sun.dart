import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../features/dashboard/admin_sun/insurance_admin_sun/details_insurance_admin_sun/details_insurance_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/insurance_admin_sun/second_screen_insurance_admin_sun/screens/all_second_screen_insurance_admin_sun_list/all_second_screen_insurance_admin_sun_list.dart';
import '../../../../../../features/dashboard/admin_sun/insurance_admin_sun/second_screen_insurance_admin_sun/screens/part_of_list_container_in_second_screen_insurance_admin_sun.dart';

class ListDataSecondScreenSecondScreenInsuranceAdminSun extends StatelessWidget {
  const ListDataSecondScreenSecondScreenInsuranceAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 30,
      children: [
        PartOfListContainerInSecondScreenInsuranceAdminSun(
        onTap: (){
        Navigator.of(context).push(
          NavigateToPageWidget(DetailsInsuranceAdminSun()),
        );
       }
        ),
        AllSecondScreenInsuranceAdminSunList(),
      ],
    );
  }
}