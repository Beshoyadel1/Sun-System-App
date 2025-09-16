import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/features/Insurance/custom_widget/container_invoice_widget.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/container_notes.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_service_bill_payment_in_service_request/container_service.dart';
import 'package:sun_system_app/features/request_service/mobile_service_in_service_request/ui/screens/container_invoice_mobile_service_in_service_request/container_invoice_mobile_service_in_service_request.dart';
import 'package:sun_system_app/features/request_service/mobile_service_in_service_request/ui/screens/container_mobile_service_in_service_request/container_mobile_service_in_service_request.dart';
import 'package:sun_system_app/features/request_service/mobile_service_in_service_request/ui/screens/container_service_request/container_service_request.dart';

class ListDataYourBillPaymentInMobileServiceInServiceRequest extends StatelessWidget {
  const ListDataYourBillPaymentInMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerMobileServiceInServiceRequest(),
        ContainerServiceBillPaymentInServiceRequest(),
        ContainerNotesPaymentInServiceRequest(),
        ContainerServiceRequest(),
        ContainerInvoiceMobileServiceInServiceRequest(),
      ],
    );
  }
}
