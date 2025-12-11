import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/admin_sun/advertisements_and_discounts_admin_sun/first_screen_advertisements_admin_sun/screens/row_view_all_advertisements_uploaded.dart';
import '../../../../../../features/dashboard/admin_sun/advertisements_and_discounts_admin_sun/add_advertisements_admin_sun/screens/data_select_advertisements.dart';
import '../../../../../../features/dashboard/admin_sun/advertisements_and_discounts_admin_sun/add_advertisements_admin_sun/screens/first_title_in_list_data_add_advertisements_admin_sun.dart';

class ListDataFirstScreenAdvertisementsAdminSun extends StatelessWidget {
  const ListDataFirstScreenAdvertisementsAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 30,
      children: [
        DataSelectAdvertisements(),
        FirstTitleInListDataAddAdvertisementsAdminSun(),
        RowViewAllAdvertisementsUploaded(),
      ],
    );
  }
}