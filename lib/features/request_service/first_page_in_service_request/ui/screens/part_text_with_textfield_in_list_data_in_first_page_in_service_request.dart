import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/profile/custom_widget/first_name_textfield_personal_data_widget.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/select_the_type_of_service.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class PartTextWithTextFieldInListDataInFirstPageInServiceRequest extends StatelessWidget {
  final TextEditingController textFormController1,textFormController2;
  const PartTextWithTextFieldInListDataInFirstPageInServiceRequest({
    super.key,
  required this.textFormController1,
  required this.textFormController2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 50,
      children: [
         FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.serviceDetails,
          hint:'أكتب التفاصيل',
          maxLines: 5,
          isRegular: true,
          textFormController: textFormController1,
        ),
         FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.desiredServicePrice,
          isRegular: true,
          textFormController: textFormController2,
        ),
      ],
    );
  }
}
