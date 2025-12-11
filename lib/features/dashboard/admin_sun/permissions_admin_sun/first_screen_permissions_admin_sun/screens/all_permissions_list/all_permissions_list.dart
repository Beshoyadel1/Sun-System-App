import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/permissions_admin_sun/first_screen_permissions_admin_sun/screens/all_permissions_list/container_data_all_permissions_list.dart';

class AllPermissionsList extends StatelessWidget {
  const AllPermissionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerDataAllPermissionsList(

          ),
          ContainerDataAllPermissionsList(

          ),
          ContainerDataAllPermissionsList(

          ),
          ContainerDataAllPermissionsList(

          ),
          ContainerDataAllPermissionsList(

          ),
        ],
      ),
    );
  }
}