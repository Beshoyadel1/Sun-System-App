import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/container_service_bill_payment_in_service_request/column_in_row_image_data_in_container_service.dart';
import 'package:sun_system_app/features/request_service/custom_widget/container_image_background_pink_widget.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/screens/container_service/column_in_row_image_data_in_container_service.dart';
import 'package:sun_system_app/features/warranty/custom_widget/row_number_coin_widget.dart';

class RowImageDataInContainerServiceBillPaymentInServiceRequest extends StatelessWidget {
  const RowImageDataInContainerServiceBillPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Row(
        spacing: 10,
        children: [
          ContainerImageBackgroundPinkWidget(imagPath: AppImageKeys.service11,),
          ColumnInRowImageDataInContainerServiceBillPaymentInServiceRequest(),
        ],
      ),
    );
  }
}
