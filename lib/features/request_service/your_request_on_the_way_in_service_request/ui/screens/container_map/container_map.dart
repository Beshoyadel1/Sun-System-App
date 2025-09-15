import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/custom_widget/container_image_background_pink_widget.dart';
import 'package:sun_system_app/features/request_service/first_page_in_service_request/ui/screens/org_location_widget_first_page_in_service_request.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_map/first_row_in_container_map.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_map/org_location_widget_first_page_in_service_request_container_map.dart';
import 'package:sun_system_app/features/warranty/custom_widget/row_number_coin_widget.dart';

class ContainerMap extends StatelessWidget {
  const ContainerMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.transparent
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          FirstRowInContainerMap(),
          OrgLocationWidgetFirstPageInServiceRequestContainerMap(location: "30.0444,31.2357"),
        ],
      ),
    );
  }
}
