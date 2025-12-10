import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/managing_policy_pages_admin_sun/managing_policy_pages_admin_sun/screens/other_data_managing_policy_pages_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/managing_policy_pages_admin_sun/managing_policy_pages_admin_sun/screens/data_select_address_title.dart';
import '../../../../../../features/dashboard/admin_sun/managing_policy_pages_admin_sun/managing_policy_pages_admin_sun/screens/title_manage_page.dart';

class DataContainerInManagingPolicyPagesAdminSun extends StatelessWidget {
  const DataContainerInManagingPolicyPagesAdminSun({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 940;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleManagePage(),
          DataSelectAddressTitle(),
          OtherDataManagingPolicyPagesAdminSun()
        ],
      ),
    );
  }
}
