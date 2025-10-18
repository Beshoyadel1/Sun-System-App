import 'package:flutter/cupertino.dart';
import '../../../../../features/dashboard/car_model_settings/car_add_screen_in_car_model_settings/screens/container_add_new_model_with_icon.dart';
import '../../../../../features/dashboard/car_model_settings/car_add_screen_in_car_model_settings/screens/list_container_edit_in_car_add_screen_in_car_model_settings.dart';
import '../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/first_title_in_first_container_in_data_container_in_list_data_first_screen_car_model_settings.dart';

class DataContainerInListDataCarAddScreenInCarModelSettings extends StatelessWidget {
  const DataContainerInListDataCarAddScreenInCarModelSettings({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstTitleInFirstContainerInDataContainerInListDataFirstScreenCarModelSettings(),
          ListContainerEditInCarAddScreenInCarModelSettings(),
          ContainerAddNewModelWithIcon()
        ],
      ),
    );
  }
}
