import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/Admin/Petroleum_Service/Oil_Products/screens/design_add_product_oil/container_design_list_add_product_oil.dart';
import '../../../../../../../../features/dashboard/Admin/Petroleum_Service/Oil_Products/screens/list_data_oil_products.dart';
import '../../../../../../../../features/dashboard/Admin/service_settings/custom_widget/appbar_dashboard_widget.dart';
import '../../../../../features/dashboard/Admin/service_settings/custom_widget/backgroundDesktop.dart';
import '../../../../../core/utilies/map_of_all_app.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/language/language_constant.dart';


class OilProducts extends StatelessWidget {
  const OilProducts({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1360;
    bool isTabletCustom = size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.customTabWidth;
    bool isTab = size.width > ValuesOfAllApp.tabWidth;

    return Row(
      children: [
        if (!isMobile) const backgroundDesktop(),
        Expanded(
          flex: 5,
          child: Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppbarDashboardWidget(
              title: AppLanguageKeys.oilProducts,
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
                        child: ListDataOilProducts(),
                      ),
                    ),
                  ),
                  if ((!isMobile))
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SingleChildScrollView(
                          child: ContainerDesignListAddProductOil()
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