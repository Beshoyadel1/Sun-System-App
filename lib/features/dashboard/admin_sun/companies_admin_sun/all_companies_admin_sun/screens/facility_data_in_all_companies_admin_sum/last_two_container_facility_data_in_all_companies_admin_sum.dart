import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/features/dashboard/admin_sun/companies_admin_sun/custom_widget/text_container_upload_data_widget.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class LastTwoContainerFacilityDataInAllCompaniesAdminSum extends StatelessWidget {
  const LastTwoContainerFacilityDataInAllCompaniesAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        TextContainerUploadDataWidget(
          text:'شهادة سجل تجاري',
        ),
        TextContainerUploadDataWidget(
          text:' هوية صاحب الشركة',
        ),
      ],
    );
  }
}
