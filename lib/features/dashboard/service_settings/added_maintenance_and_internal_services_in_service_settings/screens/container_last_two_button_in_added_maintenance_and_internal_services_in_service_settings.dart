import 'package:flutter/cupertino.dart';
import '../../../../../features/dashboard/service_settings/custom_widget/container_text_only.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class ContainerLastTwoButtonInAddedMaintenanceAndInternalServicesInServiceSettings extends StatelessWidget {
  const ContainerLastTwoButtonInAddedMaintenanceAndInternalServicesInServiceSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
        border: Border.all(
            color: AppColors.greyColor.withOpacity(0.3)
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: ContainerTextOnly(
                text: AppLanguageKeys.back,
                colorBackGround: AppColors.orangeColor,
              width: 200,
            ),
          ),
          Flexible(
            child: ContainerTextOnly(
              text: AppLanguageKeys.save,
              width: 200,
            ),
          )
        ],
      ),
    );
  }
}
