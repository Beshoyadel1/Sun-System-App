import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/custom_widget/container_image_background_pink_widget.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_map/org_location_widget_first_page_in_service_request_container_map.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_map/row_map_with_icon_in_first_row_in_container_map.dart';
import 'package:sun_system_app/features/warranty/custom_widget/row_number_coin_widget.dart';

class FirstRowInContainerMap extends StatelessWidget {
  const FirstRowInContainerMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextInAppWidget(
          text: AppLanguageKeys.trackTechnician,
          textSize: 11,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.blackColor44,
        ),
        RowMapWithIconInFirstRowInContainerMap(),
      ],
    );
  }
}
