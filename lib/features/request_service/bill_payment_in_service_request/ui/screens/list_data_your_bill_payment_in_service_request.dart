import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/features/Insurance/custom_widget/container_invoice_widget.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_bill_payment_in_service_request/container_bill_payment_in_service_request.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_contact_a_maintenance_representative_bill_payment_in_service_request/container_contact_a_maintenance_representative.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/container_notes.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_service_bill_payment_in_service_request/container_service.dart';

class ListDataYourBillPaymentInServiceRequest extends StatelessWidget {
  const ListDataYourBillPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerBillPaymentInServiceRequest(),
        ContainerServiceBillPaymentInServiceRequest(),
        ContainerNotesPaymentInServiceRequest(),
        ContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest(),
        ContainerInvoiceWidget(
            priceInsuranceInstallment: '450.00',
            priceTaxes: '45.00',
            priceTotal: '495.00'
        )
      ],
    );
  }
}
