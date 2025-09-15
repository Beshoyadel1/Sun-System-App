import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/custom_widget/Container_icon_widget.dart';

class PartTwoRowImageNameIconContainerContactAMaintenanceRepresentative extends StatelessWidget {
  const PartTwoRowImageNameIconContainerContactAMaintenanceRepresentative({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        ContainerIconWidget(
          icon: Icons.call,
        ),
        ContainerIconWidget(
          icon: Icons.message,
        ),
      ],
    );
  }
}
