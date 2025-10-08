import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/dashboard/advertisements/first_screen_advertisements/screens/container_upload_image_in_list_data_first_screen_advertisements.dart';
import '../../../../../features/dashboard/advertisements/first_screen_advertisements/screens/last_button_in_list_data_first_screen_advertisements.dart';
import '../../../../../features/dashboard/advertisements/first_screen_advertisements/screens/part_of_category_and_offers.dart';
import '../../../../../features/dashboard/advertisements/first_screen_advertisements/screens/part_of_time_start_end.dart';
import '../../../../../features/dashboard/advertisements/first_screen_advertisements/screens/first_title_in_list_data_first_screen_advertisements.dart';


class ListDataFirstScreenAdvertisements extends StatelessWidget {
  const ListDataFirstScreenAdvertisements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 30,
      children: [
        FirstTitleInListDataFirstScreenAdvertisements(),
        ContainerUploadImageInListDataFirstScreenAdvertisements(),
        PartOfCategoryAndOffers(),
        PartOfTimeStartEnd(),
        LastButtonInListDataFirstScreenAdvertisements(),
      ],
    );
  }
}
