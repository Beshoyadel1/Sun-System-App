import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/users_admin_sum/user_management_admin_sun/screens/orders/list_orders_user_admin_in_admin_sum.dart';
import '../../../../../../features/dashboard/admin_sun/users_admin_sum/user_management_admin_sun/screens/cars/list_cars_admin_sum.dart';
import '../../../../../../features/dashboard/admin_sun/users_admin_sum/user_management_admin_sun/screens/personal_data/list_personal_data_in_user_management_admin_sum.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/change_car/custom_widget/image_with_two_text.dart';

class DataContainerInUserManagementAdminSun extends StatelessWidget {
  const DataContainerInUserManagementAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageWithTwoText(
          imageSrc: AppImageKeys.person22,
          title: '#655466',
          titleColor: AppColors.greyColor,
          textSizeTitle: 13,
          subTitle: 'أسم العميل',
          subTitleColor: AppColors.blackColor,
          textSizeSubTitle: 13,
        ),
        ListPersonalDataInUserManagementAdminSum(),
        ListCarsAdminSum(),
        ListOrdersUserAdminInAdminSum(),
      ],
    );
  }
}
