import 'package:flutter/cupertino.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../first_screen_service_settings/screens/data_is_mobile_in_first_row_in_data_container_in_list_data_first_screen_service_setting.dart';
import '../../../../first_screen_service_settings/screens/data_is_not_mobile_in_first_row_in_data_container_in_list_data_first_screen_service_setting.dart';
import '../../../../../../../core/utilies/map_of_all_app.dart';

class FirstRowDataContainerInListDataAddSparePartsInServiceSettings extends StatelessWidget {
  const FirstRowDataContainerInListDataAddSparePartsInServiceSettings({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    return isMobile?
    DataIsMobileInFirstRowInDataContainerInListDataFirstScreenServiceSetting(
      text1:AppLanguageKeys.addSparePart,
      text2:AppLanguageKeys.addSparePartDetails,
      textContainer:AppLanguageKeys.back,
    ):
    DataIsNotMobileInFirstRowInDataContainerInListDataFirstScreenServiceSetting(
      text1:AppLanguageKeys.addSparePart,
      text2:AppLanguageKeys.addSparePartDetails,
      textContainer:AppLanguageKeys.back,
    );
  }
}
