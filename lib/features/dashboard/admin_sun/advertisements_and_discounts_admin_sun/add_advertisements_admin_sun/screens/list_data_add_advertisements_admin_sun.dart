import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data_select_advertisements.dart';
import 'container_upload_image_in_list_data_add_advertisements_admin_sun.dart';
import 'last_button_in_list_data_add_advertisements_admin_sun.dart';
import 'part_of_category_and_offers_admin_sun.dart';
import 'part_of_time_start_end_admin_sun.dart';
import 'first_title_in_list_data_add_advertisements_admin_sun.dart';


class ListDataAddAdvertisementsAdminSun extends StatelessWidget {
  const ListDataAddAdvertisementsAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 30,
      children: [
        DataSelectAdvertisements(),
        FirstTitleInListDataAddAdvertisementsAdminSun(),
        ContainerUploadImageInListDataAddAdvertisementsAdminSun(),
        PartOfCategoryAndOffersAdminSun(),
        PartOfTimeStartEndAdminSun(),
        LastButtonInListDataAddAdvertisementsAdminSun(),
      ],
    );
  }
}