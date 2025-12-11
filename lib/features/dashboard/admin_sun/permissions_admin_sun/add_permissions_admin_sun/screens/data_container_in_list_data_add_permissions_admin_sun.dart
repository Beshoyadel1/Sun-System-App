import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/permissions_admin_sun/add_permissions_admin_sun/screens/select_permissions/part_user_select_permissions_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/permissions_admin_sun/add_permissions_admin_sun/screens/select_permissions/permissions_and_services_provided_to_the_user_text_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/permissions_admin_sun/add_permissions_admin_sun/screens/select_permissions/select_permissions_and_services_provided_to_the_user_with_image_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/permissions_admin_sun/add_permissions_admin_sun/screens/add_data_permissions/data_name_with_text_field_and_upload_image_permissions_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/permissions_admin_sun/add_permissions_admin_sun/screens/select_permissions/user_permissions_settings_text_container_admin_sun.dart';
import '../../../../../../features/dashboard/Admin/permissions/first_screen_permissions/screens/title_with_sub_title_add_new_user.dart';


class DataContainerInListDataAddPermissionsAdminSun extends StatelessWidget {
  const DataContainerInListDataAddPermissionsAdminSun({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleWithSubTitleAddNewUser(),
          DataNameWithTextFieldAndUploadImagePermissionsAdminSun(),
          UserPermissionsSettingsTextContainerAdminSun(),
          PartUserSelectPermissionsAdminSun(),
          PermissionsAndServicesProvidedToTheUserTextAdminSun(),
          SelectPermissionsAndServicesProvidedToTheUserWithImageAdminSun()
        ],
      ),
    );
  }
}
