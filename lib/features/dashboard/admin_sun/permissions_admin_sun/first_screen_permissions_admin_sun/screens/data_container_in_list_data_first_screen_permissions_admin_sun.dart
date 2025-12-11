import 'package:flutter/cupertino.dart';
import '../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../../features/dashboard/admin_sun/permissions_admin_sun/add_permissions_admin_sun/add_permissions_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/permissions_admin_sun/first_screen_permissions_admin_sun/screens/all_permissions_list/all_permissions_list.dart';
import '../../../../../../features/dashboard/admin_sun/permissions_admin_sun/first_screen_permissions_admin_sun/screens/first_part_two_text_and_container.dart';


class DataContainerInListDataFirstScreenPermissionsAdminSun extends StatelessWidget {
  const DataContainerInListDataFirstScreenPermissionsAdminSun({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 30,
        children: [
          FirstPartTwoTextAndContainer(
              onTap: (){
                Navigator.of(context).push(
                  NavigateToPageWidget(AddPermissionsAdminSun()),
                );
              }
          ),
          AllPermissionsList()
        ],
      ),
    );
  }
}
