import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/features/dashboard/service_settings/custom_widget/custom_row_list_of_data_view_of_price_per_category.dart';
import '../../../../../features/dashboard/service_settings/custom_widget/car_image_text_in_setting_widget.dart';
import '../../../../../core/theming/assets.dart';


class ListMobileOfDataViewOfPricePerCategory extends StatelessWidget {
  const ListMobileOfDataViewOfPricePerCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        CustomRowListOfDataViewOfPricePerCategory(
          isMobile: true,
            text1: 'Ariya',
            imagePath1: AppImageKeys.car500,
            text2: 'GTR',
            imagePath2: AppImageKeys.car501
        ),
        CustomRowListOfDataViewOfPricePerCategory(
            isMobile: true,
            text1: 'Ariya',
            imagePath1: AppImageKeys.car500,
            text2: 'GTR',
            imagePath2: AppImageKeys.car501
        ),
        CustomRowListOfDataViewOfPricePerCategory(
            isMobile: true,
            text1: 'Ariya',
            imagePath1: AppImageKeys.car500,
            text2: 'GTR',
            imagePath2: AppImageKeys.car501
        ),
        CustomRowListOfDataViewOfPricePerCategory(
            isMobile: true,
            text1: 'Ariya',
            imagePath1: AppImageKeys.car500,
            text2: 'GTR',
            imagePath2: AppImageKeys.car501
        ),
        CustomRowListOfDataViewOfPricePerCategory(
            isMobile: true,
            text1: 'Ariya',
            imagePath1: AppImageKeys.car500,
            text2: 'GTR',
            imagePath2: AppImageKeys.car501
        ),
        CustomRowListOfDataViewOfPricePerCategory(
            isMobile: true,
            text1: 'Ariya',
            imagePath1: AppImageKeys.car500,
            text2: 'GTR',
            imagePath2: AppImageKeys.car501
        ),
      ],
    );
  }
}
