import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_container_in_list_data_login_emp.dart';
import '../../../../../../../../features/dashboard/employee/login_emp/login_emp/screens/background/back_ground_stack_page.dart';
import '../../../../../core/utilies/map_of_all_app.dart';
import '../../../../../core/theming/colors.dart';


class LoginEmp extends StatelessWidget {
  const LoginEmp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 940;
    bool isTabletCustom = size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.customTabWidth;
    bool isTab = size.width > ValuesOfAllApp.tabWidth;

    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Scaffold(
              backgroundColor: AppColors.scaffoldColor,
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
                          child: DataContainerInListDataLoginEmp(),
                        ),
                      ),
                    ),
                    if ((!isMobile))
                      Expanded(
                        flex: 3,
                        child: BackgroundStackPage(),
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