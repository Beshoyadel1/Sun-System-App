import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/custom_widget/Container_icon_widget.dart';
import 'package:sun_system_app/features/request_service/map_background_in_service_request/ui/screens/last_container_in_map_background_in_service_request.dart';
import 'package:sun_system_app/features/request_service/map_background_in_service_request/ui/screens/org_location_widget_map_background.dart';
import 'package:sun_system_app/features/request_service/map_background_in_service_request/ui/screens/row_image_text_in_last_container_in_map_background_in_service_request.dart';
import 'package:sun_system_app/features/request_service/map_background_in_service_request/ui/screens/row_two_icon_in_last_container_in_map_background_in_service_request.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';


class RowImageTextInLastContainerInMapBackgroundInServiceRequest extends StatelessWidget {
  const RowImageTextInLastContainerInMapBackgroundInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            AppImageKeys.emp,
          ),
        ),
        TextInAppWidget(
          text:'اسم الفني',
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.darkColor,
        ),
      ],
    );
  }
}
