import 'package:flutter/cupertino.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/details_accounts_management_admin_sun/details_accounts_management_admin_sun.dart';
import '../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/second_screen_accounts_management_admin_sun/screens/all_profits_from_packages_second_ist/container_data_order_in_all_profits_from_packages_second_list.dart';

class AllProfitsFromPackagesSecondList extends StatelessWidget {
  const AllProfitsFromPackagesSecondList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerDataOrderInAllProfitsFromPackagesSecondList(
          isAccept4: true,
            onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(DetailsAccountsManagementAdminSun()),
              );
            }
        ),
        ContainerDataOrderInAllProfitsFromPackagesSecondList(
            isAccept4: true,
            onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(DetailsAccountsManagementAdminSun()),
              );
            }
        ),
        ContainerDataOrderInAllProfitsFromPackagesSecondList(
            isAccept4: true,
            onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(DetailsAccountsManagementAdminSun()),
              );
            }
        ),
        ContainerDataOrderInAllProfitsFromPackagesSecondList(
            isAccept4: true,
            onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(DetailsAccountsManagementAdminSun()),
              );
            }
        ),
        ContainerDataOrderInAllProfitsFromPackagesSecondList(
            isAccept4: true,
            onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(DetailsAccountsManagementAdminSun()),
              );
            }
        ),
      ],
    );
  }
}