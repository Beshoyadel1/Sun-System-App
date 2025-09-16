import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_bill_payment_in_service_request/column_two_text_in_in_last_row_container_on_the_way.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_bill_payment_in_service_request/row_image_with_two_text_in_last_row_container_on_the_way.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_on_the_way/column_two_text_in_in_last_row_container_on_the_way.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_on_the_way/row_image_with_two_text_in_last_row_container_on_the_way.dart';

class LastRowContainerBillPaymentInServiceRequest extends StatelessWidget {
  const LastRowContainerBillPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowImageWithTwoTextInLastRowContainerBillPaymentInServiceRequest(),
        ColumnTwoTextInInLastRowContainerBillPaymentInServiceRequest(),
      ],
    );
  }
}
