import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/facility_data_in_all_service_provider_sum/dialog_rejected_request_admin_sun/screens/first_part_in_dialog_rejected_request_admin_sun.dart';
import '../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/facility_data_in_all_service_provider_sum/dialog_rejected_request_admin_sun/screens/last_two_button_in_dialog_rejected_request_admin_sun.dart';
import '../../../../../../../../core/theming/colors.dart';


class DialogRejectedRequestAdminSun extends StatelessWidget {
  const DialogRejectedRequestAdminSun({super.key});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          width: 400,
          height: 350,
          decoration: BoxDecoration(
            color: AppColors.scaffoldColor,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 20,
            children: [
              FirstPartInDialogRejectedRequestAdminSun(),
              LastTwoButtonInDialogRejectedRequestAdminSun(),
            ],
          ),
        ),
      ),
    );
  }
}

