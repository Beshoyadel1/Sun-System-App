import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/features/dashboard/permissions/first_screen_permissions/screens/mobile_of_data_container_in_list_data_first_screen_permissions.dart';
import 'package:sun_system_app/features/dashboard/permissions/first_screen_permissions/screens/web_of_data_container_in_list_data_first_screen_permissions.dart';
import '../../../../../core/utilies/map_of_all_app.dart';
import '../../../../../features/dashboard/permissions/custom_widget/text_with_container_as_column_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/dashboard/permissions/custom_widget/text_with_text_form_field_as_column_widget.dart';

class DataNameWithTextFieldAndUploadImagePermissions extends StatelessWidget {
  const DataNameWithTextFieldAndUploadImagePermissions({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    return isMobile ? MobileOfDataContainerInListDataFirstScreenPermissions()
        :
    WebOfDataContainerInListDataFirstScreenPermissions()
    ;
  }
}

