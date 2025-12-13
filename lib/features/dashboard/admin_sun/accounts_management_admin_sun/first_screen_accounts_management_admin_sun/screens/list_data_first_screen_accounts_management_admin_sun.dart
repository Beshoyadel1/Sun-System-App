import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/first_screen_accounts_management_admin_sun/screens/all_profits_from_packages_list/all_profits_from_packages_list.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/first_screen_accounts_management_admin_sun/screens/part_search_first_screen_accounts_management_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/first_screen_accounts_management_admin_sun/screens/part_of_list_container_in_first_screen_accounts_management_admin_sun.dart';

class ListDataFirstScreenAccountsManagementAdminSun extends StatelessWidget {
  const ListDataFirstScreenAccountsManagementAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 30,
      children: [
        PartOfListContainerInFirstScreenAccountsManagementAdminSun(),
        PartSearchFirstScreenAccountsManagementAdminSun(),
        AllProfitsFromPackagesList(),
      ],
    );
  }
}