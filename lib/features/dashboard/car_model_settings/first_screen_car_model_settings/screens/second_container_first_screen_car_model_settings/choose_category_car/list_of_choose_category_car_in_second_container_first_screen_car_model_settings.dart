import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/choose_category_car/mobile_of_list_of_choose_category_car_in_second_container_first_screen_car_model_settings.dart';
import '../../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/choose_category_car/tab_of_list_of_choose_category_car_in_second_container_first_screen_car_model_settings.dart';
import '../../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/choose_category_car/web_of_list_of_choose_category_car_in_second_container_first_screen_car_model_settings.dart';

class ListOfChooseCategoryCarInSecondContainerFirstScreenCarModelSettings extends StatelessWidget {
  const ListOfChooseCategoryCarInSecondContainerFirstScreenCarModelSettings({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isTable = size.width > 500 && size.width <= 1125;
    bool isWeb = size.width > 1125;

    return isWeb? WebOfListOfChooseCategoryCarInSecondContainerFirstScreenCarModelSettings()
        : isTable?TabOfListOfChooseCategoryCarInSecondContainerFirstScreenCarModelSettings():
    MobileOfListOfChooseCategoryCarInSecondContainerFirstScreenCarModelSettings()
    ;
  }
}

