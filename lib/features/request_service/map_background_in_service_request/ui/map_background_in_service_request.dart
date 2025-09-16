import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/features/request_service/map_background_in_service_request/ui/screens/last_container_in_map_background_in_service_request.dart';
import 'package:sun_system_app/features/request_service/map_background_in_service_request/ui/screens/org_location_widget_map_background.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';


class MapBackgroundInServiceRequest extends StatelessWidget {
  const MapBackgroundInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppbarProfileWidget(
        title: '',
        color: Colors.transparent,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: OrgLocationWidgetMapBackground(
              location: "30.0444,31.2357",
            ),
          ),
          LastContainerInMapBackgroundInServiceRequest(),

        ],
      ),
    );
  }
}
