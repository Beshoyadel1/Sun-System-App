import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/first_screen_accounts_management_admin_sun/screens/all_profits_from_packages_list/container_data_order_in_all_profits_from_packages_list.dart';

class AllProfitsFromPackagesList extends StatelessWidget {
  const AllProfitsFromPackagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerDataOrderInAllProfitsFromPackagesList(
          isPaidSuccess3: true,
        ),
        ContainerDataOrderInAllProfitsFromPackagesList(
          isPaidSuccess3: true,
        ),
        ContainerDataOrderInAllProfitsFromPackagesList(
          isPaidSuccess3: true,
        ),
        ContainerDataOrderInAllProfitsFromPackagesList(
          isPaidSuccess3: true,
        ),
        ContainerDataOrderInAllProfitsFromPackagesList(
          isPaidSuccess3: true,
        ),
      ],
    );
  }
}