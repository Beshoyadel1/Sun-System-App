import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/details_accounts_management_admin_sun/screens/list_enter_data_in_details_accounts_management_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/details_accounts_management_admin_sun/screens/text_transferring_the_balance.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/details_accounts_management_admin_sun/screens/part_of_list_container_in_details_accounts_management_admin_sun.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/change_car/custom_widget/image_with_two_text.dart';

class ListDataDetailsAccountsManagementAdminSun extends StatelessWidget {
  const ListDataDetailsAccountsManagementAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 30,
      children: [
        ImageWithTwoText(
            imageSrc: AppImageKeys.test100,
            title: '#655466',
            titleColor: AppColors.greyColor,
            subTitle: 'أسم المركز ',
            subTitleColor: AppColors.blackColor,
        ),
        PartOfListContainerInDetailsAccountsManagementAdminSun(),
        TextTransferringTheBalance(),
        ListEnterDataInDetailsAccountsManagementAdminSun(),
      ],
    );
  }
}