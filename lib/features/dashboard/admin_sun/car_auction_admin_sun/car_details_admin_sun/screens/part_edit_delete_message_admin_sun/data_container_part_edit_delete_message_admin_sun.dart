import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_details_admin_sun/screens/part_edit_delete_message_admin_sun/container_edit_delete_car_details_admin_sun.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/container_design_message_details_car_widget.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class DataContainerPartEditDeleteMessageAdminSun extends StatelessWidget {
  const DataContainerPartEditDeleteMessageAdminSun({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 30,
        children: [
          ContainerEditDeleteCarDetailsAdminSun(),
          TextInAppWidget(
            text:AppLanguageKeys.messages,
            textSize: 17,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor:AppColors.blackColor44,
          ),
          ContainerDesignMessageDetailsCarWidget(
            isMessage: true,
          ),
          ContainerDesignMessageDetailsCarWidget(
            isMessage: true,
          ),
          ContainerDesignMessageDetailsCarWidget(),
          ContainerDesignMessageDetailsCarWidget(),
        ],
      ),
    );
  }
}
