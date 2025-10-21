import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/dashboard/service_settings/car_spare_parts_in_service_settings/sub/add_spare_parts_in_service_settings/add_spare_parts_in_service_settings.dart';
import '../../../../../features/dashboard/service_settings/car_spare_parts_in_service_settings/screens/floating_action_button_screen.dart';
import '../../../../../features/dashboard/service_settings/car_spare_parts_in_service_settings/screens/list_data_car_spare_parts_in_service_settings.dart';
import '../../../../../features/dashboard/service_settings/custom_widget/appbar_dashboard_widget.dart';
import '../../../../../features/dashboard/service_settings/custom_widget/backgroundDesktop.dart';
import '../../../../../core/utilies/map_of_all_app.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/language/language_constant.dart';


class CarSparePartsInServiceSettings extends StatelessWidget {
  const CarSparePartsInServiceSettings({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    bool isTabletCustom = size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.customTabWidth;
    bool isTab = size.width > ValuesOfAllApp.tabWidth;

    return Row(
      children: [
        if (!isMobile)
          const backgroundDesktop(),
        Expanded(
          flex: 3,
          child: Scaffold(
            backgroundColor: AppColors.scaffoldColor,
            appBar: AppbarDashboardWidget(title:AppLanguageKeys.serviceSettings,),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                          child: ListDataCarSparePartsInServiceSettings()
                      ),
                    ),
                  ],
                ),
              ),
            ),
            floatingActionButton: FloatingActionButtonScreen(
              onPressed: (){
                Navigator.pop(context);
                Navigator.of(context).push(NavigateToPageWidget(const AddSparePartsInServiceSettings()));
              },
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          ),
        ),
      ],
    );
  }
}