import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/second_screen_accounts_management_admin_sun/screens/all_profits_from_packages_second_ist/all_profits_from_packages_second_list.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/second_screen_accounts_management_admin_sun/screens/part_of_list_container_in_second_screen_accounts_management_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/second_screen_accounts_management_admin_sun/screens/part_search_second_screen_accounts_management_admin_sun.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/change_car/custom_widget/image_with_two_text.dart';

class ListDataSecondScreenAccountsManagementAdminSun extends StatelessWidget {
  const ListDataSecondScreenAccountsManagementAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 30,
      children: [
        PartSearchSecondScreenAccountsManagementAdminSun(),
        ImageWithTwoText(
            imageSrc: AppImageKeys.test100,
            title: '#655466',
            titleColor: AppColors.greyColor,
            subTitle: 'أسم المركز ',
            subTitleColor: AppColors.blackColor,
        ),
        PartOfListContainerInSecondScreenAccountsManagementAdminSun(),
        AllProfitsFromPackagesSecondList(),
      ],
    );
  }
}