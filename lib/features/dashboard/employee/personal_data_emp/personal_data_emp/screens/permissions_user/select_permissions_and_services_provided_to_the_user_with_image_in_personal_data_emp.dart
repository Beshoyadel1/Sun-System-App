import 'package:flutter/cupertino.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../Admin/permissions/custom_widget/check_box_with_text_widget.dart';

class SelectPermissionsAndServicesProvidedToTheUserWithImageInPersonalDataEmp extends StatelessWidget {
  const SelectPermissionsAndServicesProvidedToTheUserWithImageInPersonalDataEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CheckBoxWithText(
              text: AppLanguageKeys.maintenanceServices,
              imageSelect: AppImageKeys.service33,
            ),
            CheckBoxWithText(text: AppLanguageKeys.maintenanceServices,
              imageSelect: AppImageKeys.service44,
            ),
          ],
        )
      ],
    );
  }
}
