import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/admin_sun/insurance_admin_sun/details_insurance_admin_sun/screens/list_enter_data_in_details_insurance_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/insurance_admin_sun/details_insurance_admin_sun/screens/part_of_list_container_in_details_insurance_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/insurance_admin_sun/details_insurance_admin_sun/screens/text_transferring_the_balance_details_insurance_admin_sun.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/change_car/custom_widget/image_with_two_text.dart';

class ListDataDetailsInsuranceAdminSun extends StatelessWidget {
  const ListDataDetailsInsuranceAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 30,
      children: [
        ImageWithTwoText(
            imageSrc: AppImageKeys.company1,
            title: '#655466',
            titleColor: AppColors.greyColor,
            subTitle: 'أسم شركة التأمين ',
            subTitleColor: AppColors.blackColor,
        ),
        PartOfListContainerInDetailsInsuranceAdminSun(),
        TextTransferringTheBalanceDetailsInsuranceAdminSun(),
        ListEnterDataInDetailsInsuranceAdminSun(),
      ],
    );
  }
}