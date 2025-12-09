import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/rates_admin_sun/screens/container_review_data_person_design/mobile_list_data_container_review_data_person_design_admin_sun.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/rates_admin_sun/screens/container_review_data_person_design/tab_list_data_container_review_data_person_design_admin_sun.dart';
import '../../../../../../../core/utilies/map_of_all_app.dart';

class ListDataContainerReviewDataPersonDesignAdminSun extends StatelessWidget {
  const ListDataContainerReviewDataPersonDesignAdminSun({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isCustomTabWidth = size.width > ValuesOfAllApp.customTabWidth;
    return isCustomTabWidth?
    TabListDataContainerReviewDataPersonDesignAdminSun():
    MobileListDataContainerReviewDataPersonDesignAdminSun();
  }
}
