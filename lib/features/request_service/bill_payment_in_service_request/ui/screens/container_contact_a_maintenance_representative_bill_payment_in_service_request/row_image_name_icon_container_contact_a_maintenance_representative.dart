import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_contact_a_maintenance_representative_bill_payment_in_service_request/part_one_row_image_name_icon_container_contact_a_maintenance_representative.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_contact_a_maintenance_representative_bill_payment_in_service_request/part_two_row_image_name_icon_container_contact_a_maintenance_representative.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_contact_a_maintenance_representative/part_one_row_image_name_icon_container_contact_a_maintenance_representative.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_contact_a_maintenance_representative/part_two_row_image_name_icon_container_contact_a_maintenance_representative.dart';

class RowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest extends StatelessWidget {
  const RowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PartOneRowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest(),
        PartTwoRowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest()
      ],
    );
  }
}
