import 'package:flutter/material.dart';
import 'package:sun_system_app/features/request_service/map_background_in_service_request/ui/screens/open_street_map_screen_map_background.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/utilies/map_of_all_app.dart';

class OrgLocationWidgetMapBackground extends StatefulWidget {
  const OrgLocationWidgetMapBackground({super.key, required this.location});

  final String location;

  @override
  State<OrgLocationWidgetMapBackground> createState() => _OrgLocationWidgetMapBackgroundState();
}

class _OrgLocationWidgetMapBackgroundState
    extends State<OrgLocationWidgetMapBackground> {
  double latitude = 0;
  double longitude = 0;

  @override
  void initState() {
    super.initState();
    if (widget.location.isNotEmpty) {
      latitude = double.parse(widget.location.split(',')[0]);
      longitude = double.parse(widget.location.split(',')[1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: OpenStreetMapScreenMapBackground(
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }
}
