import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:sun_system_app/core/theming/colors.dart';

class OpenStreetMapScreenFirstPageInServiceRequestContainerMap extends StatelessWidget {
  const OpenStreetMapScreenFirstPageInServiceRequestContainerMap({super.key, required this.latitude, required this.longitude});

  final double latitude;
  final double longitude;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: LatLng(latitude, longitude),
        initialZoom: 18.0,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.sun_system',
        ),
        MarkerLayer(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(latitude, longitude),
              child: const Icon(
                Icons.location_pin,
                color: AppColors.redColor,
                size: 40.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
