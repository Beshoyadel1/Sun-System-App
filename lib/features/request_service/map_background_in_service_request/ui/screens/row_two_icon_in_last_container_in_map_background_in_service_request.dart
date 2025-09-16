import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/calling_in_service_request/ui/calling_in_service_request.dart';
import 'package:sun_system_app/features/request_service/chat_in_service_request/ui/chat_in_service_request.dart';
import 'package:sun_system_app/features/request_service/custom_widget/Container_icon_widget.dart';
import 'package:sun_system_app/features/request_service/map_background_in_service_request/ui/screens/last_container_in_map_background_in_service_request.dart';
import 'package:sun_system_app/features/request_service/map_background_in_service_request/ui/screens/org_location_widget_map_background.dart';
import 'package:sun_system_app/features/request_service/map_background_in_service_request/ui/screens/row_image_text_in_last_container_in_map_background_in_service_request.dart';
import 'package:sun_system_app/features/request_service/map_background_in_service_request/ui/screens/row_two_icon_in_last_container_in_map_background_in_service_request.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';


class RowTwoIconInLastContainerInMapBackgroundInServiceRequest extends StatelessWidget {
  const RowTwoIconInLastContainerInMapBackgroundInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        ContainerIconWidget(
          imagPath: AppImageKeys.call,
          onTap: (){
            Navigator.of(context).push(
              NavigateToPageWidget(
                  CallingInServiceRequest()
              ),
            );
          },
        ),
        ContainerIconWidget(
          imagPath: AppImageKeys.message,
          onTap: (){
            Navigator.of(context).push(
              NavigateToPageWidget(
                  ChatInServiceRequest()
              ),
            );
          },
        ),
      ],
    );
  }
}
