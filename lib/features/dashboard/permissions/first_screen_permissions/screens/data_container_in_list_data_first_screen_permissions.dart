import 'package:flutter/cupertino.dart';
import '../../../../../features/dashboard/permissions/first_screen_permissions/screens/data_name_with_text_field_and_upload_image_permissions.dart';
import '../../../../../features/dashboard/permissions/first_screen_permissions/screens/title_with_sub_title_add_new_user.dart';


class DataContainerInListDataFirstScreenPermissions extends StatelessWidget {
  const DataContainerInListDataFirstScreenPermissions({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleWithSubTitleAddNewUser(),
          DataNameWithTextFieldAndUploadImagePermissions()
        ],
      ),
    );
  }
}
