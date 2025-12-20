import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/facility_data_in_all_service_provider_sum/dialog_rejected_request_admin_sun/dialog_rejected_request_admin_sun.dart';
import '../../../../../../../../features/dashboard/Admin/service_settings/custom_widget/container_text_only.dart';
import '../../../../../../../../core/theming/colors.dart';

class LastTwoContainerActiveAndCloseFacilityDataInAllServiceProviderSum extends StatelessWidget {
  const LastTwoContainerActiveAndCloseFacilityDataInAllServiceProviderSum({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        ContainerTextOnly(
          text: 'الغاء التفعيل',
          colorBackGround: AppColors.redColor,
          onTap: (){
            showDialog(
              context: context,
              barrierDismissible: true, // tap outside to close
              builder: (context) {
                return const DialogRejectedRequestAdminSun();
              },
            );
          },
        ),
        ContainerTextOnly(
          text: 'تفعيل النشاط',
          colorBackGround: AppColors.greenColor,
        )
      ],
    );
  }
}
