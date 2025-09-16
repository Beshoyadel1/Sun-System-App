import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/calling_in_service_request/ui/screens/container_call_in_data_calling_design.dart';
import 'package:sun_system_app/features/request_service/calling_in_service_request/ui/screens/data_calling_design.dart';

class ContainerCallInDataCallingDesign extends StatelessWidget {
  const ContainerCallInDataCallingDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      width: 60,
      decoration: BoxDecoration(
        color: AppColors.orangeColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.redColor.withOpacity(0.3),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Image.asset(AppImageKeys.call2),
    );
  }
}
