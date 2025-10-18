import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/choose_model_car/mobile_of_list_of_choose_model_car_in_second_container_first_screen_car_model_settings.dart';
import '../../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/choose_model_car/tab_of_list_of_choose_model_car_in_second_container_first_screen_car_model_settings.dart';
import '../../../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/second_container_first_screen_car_model_settings/choose_model_car/web_of_list_of_choose_model_car_in_second_container_first_screen_car_model_settings.dart';

class ListOfChooseModelCarInSecondContainerFirstScreenCarModelSettings extends StatelessWidget {
  const ListOfChooseModelCarInSecondContainerFirstScreenCarModelSettings({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isTable = size.width > 500 && size.width <= 1125;
    bool isWeb = size.width > 1125;

    return isWeb? WebOfListOfChooseModelCarInSecondContainerFirstScreenCarModelSettings()
        : isTable?TabOfListOfChooseModelCarInSecondContainerFirstScreenCarModelSettings():
    MobileOfListOfChooseModelCarInSecondContainerFirstScreenCarModelSettings()
    ;
  }
}

