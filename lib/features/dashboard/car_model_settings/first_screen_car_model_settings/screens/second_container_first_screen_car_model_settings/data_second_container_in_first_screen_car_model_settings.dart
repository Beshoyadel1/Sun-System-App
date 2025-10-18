import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/choose_category_car/title_choose_category.dart';
import '../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/select_year_model/select_year_model.dart';
import '../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/select_year_model/title_select_year_model.dart';
import '../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/choose_category_car/list_of_choose_category_car_in_second_container_first_screen_car_model_settings.dart';
import '../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/choose_model_car/list_of_choose_model_car_in_second_container_first_screen_car_model_settings.dart';
import '../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/first_title_search_in_data_second_container_in_first_screen_car_model_settings.dart';

class DataSecondContainerInFirstScreenCarModelSettings extends StatelessWidget {
  const DataSecondContainerInFirstScreenCarModelSettings({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FirstTitleSearchInDataSecondContainerInFirstScreenCarModelSettings(),
          ListOfChooseModelCarInSecondContainerFirstScreenCarModelSettings(),
          TitleChooseCategory(),
          ListOfChooseCategoryCarInSecondContainerFirstScreenCarModelSettings(),
          TitleSelectYearModel(),
          SelectYearModel(),
        ],
      ),
    );
  }
}
