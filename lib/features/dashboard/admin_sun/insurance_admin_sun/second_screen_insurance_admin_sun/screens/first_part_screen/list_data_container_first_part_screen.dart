import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/insurance_admin_sun/second_screen_insurance_admin_sun/screens/first_part_screen/second_row_list_data_container_first_part_screen.dart';
import '../../../../../../../features/dashboard/admin_sun/insurance_admin_sun/second_screen_insurance_admin_sun/screens/first_part_screen/first_row_list_data_container_first_part_screen.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';


class ListDataContainerFirstPartScreen extends StatelessWidget {
  const ListDataContainerFirstPartScreen({super.key});

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
          subTitle: 'أسم شركة التأمين',
          subTitleColor: AppColors.blackColor,
          textSizeSubTitle: 15,
          isSemiBold: true,
        ),
        FirstRowListDataContainerFirstPartScreen(),
        SecondRowListDataContainerFirstPartScreen()
      ],
    );
  }
}