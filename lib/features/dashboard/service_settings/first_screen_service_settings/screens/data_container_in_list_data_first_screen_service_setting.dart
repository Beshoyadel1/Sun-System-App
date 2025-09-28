import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../features/dashboard/service_settings/custom_widget/container_in_data_container_in_list_data_first_screen_service_setting_widget.dart';
import '../../../../../features/dashboard/service_settings/first_screen_service_settings/screens/first_row_in_data_container_in_list_data_first_screen_service_setting.dart';

class DataContainerInListDataFirstScreenServiceSetting extends StatelessWidget {
  const DataContainerInListDataFirstScreenServiceSetting({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstRowInDataContainerInListDataFirstScreenServiceSetting(),
          ContainerInDataContainerInListDataFirstScreenServiceSettingWidget(
            imagePath: AppImageKeys.car1_service,
            title: AppLanguageKeys.internalServices,
          ),
          ContainerInDataContainerInListDataFirstScreenServiceSettingWidget(
            imagePath: AppImageKeys.car2_service,
            title: AppLanguageKeys.mobileAndTransportServices,
          ),
          ContainerInDataContainerInListDataFirstScreenServiceSettingWidget(
            imagePath: AppImageKeys.car3_service,
            title: AppLanguageKeys.carSpareParts,
          ),
          ContainerInDataContainerInListDataFirstScreenServiceSettingWidget(
            imagePath: AppImageKeys.car4_service,
            title: AppLanguageKeys.sharedPackages,
          ),
        ],
      ),
    );
  }
}
