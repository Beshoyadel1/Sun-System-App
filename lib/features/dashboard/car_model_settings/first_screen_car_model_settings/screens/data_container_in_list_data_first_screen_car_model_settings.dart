import 'package:flutter/cupertino.dart';
import '../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/second_container_first_screen_car_model_settings.dart';
import '../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/first_title_in_first_container_in_data_container_in_list_data_first_screen_car_model_settings.dart';

class DataContainerInListDataFirstScreenCarModelSettings extends StatelessWidget {
  const DataContainerInListDataFirstScreenCarModelSettings({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstTitleInFirstContainerInDataContainerInListDataFirstScreenCarModelSettings(),
          SecondContainerFirstScreenCarModelSettings(),
          //list_of_choose_model_car_in_second_container_first_screen_car_model_settings
        ],
      ),
    );
  }
}
