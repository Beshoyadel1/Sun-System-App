import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/employee/technical_support/technical_support_emp/screens/team_work/container_design_team_work.dart';
import '../../../../../../../../features/dashboard/employee/technical_support/technical_support_emp/screens/chat/chat_in_technical_support_emp.dart';
import '../../../../../../../../features/dashboard/employee/technical_support/technical_support_emp/screens/list_data_technical_support_emp.dart';
import '../../../../../../../../features/dashboard/Admin/service_settings/custom_widget/appbar_dashboard_widget.dart';
import '../../../../../features/dashboard/Admin/service_settings/custom_widget/backgroundDesktop.dart';
import '../../../../../core/utilies/map_of_all_app.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/language/language_constant.dart';


class TechnicalSupportEmp extends StatelessWidget {
  const TechnicalSupportEmp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
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
                title: AppLanguageKeys.technicalSupport,
              ),
              body: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: ListDataTechnicalSupportEmp(),
                        ),
                      ),
                    ),
                    if ((!isMobile))
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ChatInTechnicalSupportEmp(),
                        ),
                      ),
                    if ((!isMobile&&!isTabletCustom))
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SingleChildScrollView(
                            child: ContainerDesignTeamWork()
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