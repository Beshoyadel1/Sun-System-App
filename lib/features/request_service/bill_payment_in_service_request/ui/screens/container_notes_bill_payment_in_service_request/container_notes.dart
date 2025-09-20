import 'package:flutter/cupertino.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/request_service/bill_payment_in_service_request/ui/screens/container_notes_bill_payment_in_service_request/first_row_container_notes_payment_in_service_request.dart';

class ContainerNotesPaymentInServiceRequest extends StatelessWidget {
  const ContainerNotesPaymentInServiceRequest({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          FirstRowContainerNotesPaymentInServiceRequest(),
          TextInAppWidget(
            text: 'لمبة المكينة شغالة، أرجو فحصها بجهاز OBD',
            textSize: 13,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkColor,
          ),
        ],
      ),
    );
  }
}
