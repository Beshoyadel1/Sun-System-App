import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/custom_widget/container_design_message_details_car_widget.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_edit_delete_message/container_edit_delete_car_details.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class DataContainerPartEditDeleteMessage extends StatelessWidget {
  const DataContainerPartEditDeleteMessage({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 30,
        children: [
          ContainerEditDeleteCarDetails(),
          TextInAppWidget(
            text:AppLanguageKeys.messages,
            textSize: 17,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor:AppColors.blackColor44,
          ),
          ContainerDesignMessageDetailsCarWidget(
            isMessage: true,
          ),
          ContainerDesignMessageDetailsCarWidget(),
          ContainerDesignMessageDetailsCarWidget(),
          ContainerDesignMessageDetailsCarWidget(),
        ],
      ),
    );
  }
}
