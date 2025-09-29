import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/dashboard/service_settings/custom_widget/expansion_container_setting_widget.dart';
import '../../../../../features/dashboard/service_settings/added_maintenance_and_internal_services_in_service_settings/screens/icon_car_orange_text_of_added_maintenance_and_internal_services.dart';
import '../../../../../features/dashboard/service_settings/first_screen_service_settings/screens/first_row_in_data_container_in_list_data_first_screen_service_setting.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';


class DataContainerInListDataAddedMaintenanceAndInternalServicesInServiceSettings extends StatelessWidget {
  const DataContainerInListDataAddedMaintenanceAndInternalServicesInServiceSettings({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstRowInDataContainerInListDataFirstScreenServiceSetting(),
          IconCarOrangeTextOfAddedMaintenanceAndInternalServices(),
          ExpansionContainerSettingWidget(
            imagePath: AppImageKeys.service3,
            text: AppLanguageKeys.maintenanceAndRepair,
          ),
          ExpansionContainerSettingWidget(
            imagePath: AppImageKeys.service4,
            text: AppLanguageKeys.oilChange,
          ),
          ExpansionContainerSettingWidget(
            imagePath: AppImageKeys.setting3,
            text: AppLanguageKeys.carWash,
          ),
          ExpansionContainerSettingWidget(
            imagePath: AppImageKeys.setting4,
            text: AppLanguageKeys.battery,
          ),ExpansionContainerSettingWidget(
            imagePath: AppImageKeys.setting5,
            text: AppLanguageKeys.periodicMaintenance,
          ),ExpansionContainerSettingWidget(
            imagePath: AppImageKeys.setting6,
            text: AppLanguageKeys.glass,
          ),
        ],
      ),
    );
  }
}
