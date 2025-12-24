import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/admin_sun/users_admin_sum/user_management_admin_sun/screens/list_data_user_management_admin_sun.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/dashboard/Admin/service_settings/custom_widget/backgroundDesktop.dart';
import '../../../../../../features/dashboard/Admin/service_settings/custom_widget/appbar_dashboard_widget.dart';
import '../../../../../../core/utilies/map_of_all_app.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/language/language_constant.dart';

class UserManagementAdminSun extends StatelessWidget {
  const UserManagementAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    bool isTabletCustom =
        size.width > ValuesOfAllApp.mobileWidth &&
        size.width <= ValuesOfAllApp.customTabWidth;
    bool isTab = size.width > ValuesOfAllApp.tabWidth;

    return Row(
      children: [
        if (!isMobile)
          const backgroundDesktop(
            color: AppColors.whiteColor,
            imagePath: AppImageKeys.container_background_sun,
          ),
        Expanded(
          flex: 3,
          child: Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppbarDashboardWidget(title: AppLanguageKeys.allOrders),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: ListDataUserManagementAdminSun(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
