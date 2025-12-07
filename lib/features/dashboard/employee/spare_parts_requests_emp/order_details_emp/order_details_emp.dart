import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_details_emp/screens/part_left_screen/data_part_left_screen.dart';
import '../../../../../../../../features/dashboard/employee/spare_parts_requests_emp/order_details_emp/screens/list_data_order_details_emp.dart';
import '../../../../../../../../features/dashboard/Admin/service_settings/custom_widget/appbar_dashboard_widget.dart';
import '../../../../../features/dashboard/Admin/service_settings/custom_widget/backgroundDesktop.dart';
import '../../../../../core/utilies/map_of_all_app.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/language/language_constant.dart';

class OrderDetailsEmp extends StatelessWidget {
  const OrderDetailsEmp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 960;
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
                title: AppLanguageKeys.allOrders,
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
                          child: ListDataOrderDetailsEmp(),
                        ),
                      ),
                    ),
                    if ((!isMobile))
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SingleChildScrollView(
                            child: DataPartLeftScreen()
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