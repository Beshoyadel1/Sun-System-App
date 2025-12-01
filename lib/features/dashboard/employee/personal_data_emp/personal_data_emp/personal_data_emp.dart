import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/employee/personal_data_emp/personal_data_emp/screens/permissions_user/container_select_permissions_and_services_provided_to_the_user_with_image_in_personal_data_emp.dart';
import '../../../../../../../../features/dashboard/employee/personal_data_emp/personal_data_emp/screens/list_data_personal_data_emp.dart';
import '../../../../../../../../features/dashboard/Admin/service_settings/custom_widget/appbar_dashboard_widget.dart';
import '../../../../../features/dashboard/Admin/service_settings/custom_widget/backgroundDesktop.dart';
import '../../../../../core/utilies/map_of_all_app.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/language/language_constant.dart';


class PersonalDataEmp extends StatelessWidget {
  const PersonalDataEmp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 940;
    bool isTabletCustom = size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.customTabWidth;
    bool isTab = size.width > ValuesOfAllApp.tabWidth;

    return Row(
      children: [
        if (!isMobile) const backgroundDesktop(
          color: AppColors.blueColor,
        ),
        Expanded(
          flex: 5,
          child: Scaffold(
              backgroundColor: AppColors.scaffoldColor,
              appBar: AppbarDashboardWidget(
                title: AppLanguageKeys.serviceSettings,
              ),
              body: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: ListDataPersonalDataEmp(),
                        ),
                      ),
                    ),
                    if ((!isMobile))
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SingleChildScrollView(
                            child: Column(
                              spacing: 20,
                              children: [
                                ContainerSelectPermissionsAndServicesProvidedToTheUserWithImageInPersonalDataEmp()
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              )
          ),
        ),
      ],
    );
  }
}