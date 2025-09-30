import 'package:flutter/cupertino.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_service_bill_payment_in_service_request/row_image_data_in_container_service.dart';
import '../../../../../../features/request_service/custom_widget/row_data_correct_text.dart';


class ContainerServiceBillPaymentInServiceRequest extends StatelessWidget {
  const ContainerServiceBillPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.transparent
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          TextInAppWidget(
            text: AppLanguageKeys.services,
            textSize: 11,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.blackColor44,
          ),
          RowImageDataInContainerServiceBillPaymentInServiceRequest(),
          RowDataCorrectText(
              text: AppLanguageKeys.brakeRepair
          ),
          RowDataCorrectText(
              text: AppLanguageKeys.electricalRepair,
          ),
        ],
      ),
    );
  }
}
