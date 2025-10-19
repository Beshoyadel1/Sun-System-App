import 'package:flutter/cupertino.dart';
import '../../../../../features/dashboard/car_model_settings/service_settings_car_model/screens/container_list_car_data_service_setting.dart';
import '../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/first_title_in_first_container_in_data_container_in_list_data_first_screen_car_model_settings.dart';

class DataContainerInListDataServiceSettingsCarModel extends StatelessWidget {
  const DataContainerInListDataServiceSettingsCarModel({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstTitleInFirstContainerInDataContainerInListDataFirstScreenCarModelSettings(),
          ContainerListCarDataServiceSetting()
        ],
      ),
    );
  }
}
