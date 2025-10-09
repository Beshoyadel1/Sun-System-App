import 'package:flutter/cupertino.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/dashboard/rates/custom_widget/Container_list_container_all_rate_service_widget.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../features/dashboard/rates/first_screen_rates/screens/list_container_all_rate_service/first_container_in_list_container_all_rate_service.dart';

class TabListContainerAllRateService extends StatelessWidget {
  const TabListContainerAllRateService({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        FirstContainerInListContainerAllRateService(),
        ContainerListContainerAllRateServiceWidget(
            imagePath: AppImageKeys.service33,
            title: AppLanguageKeys.internalServices,
            subTitle: AppLanguageKeys.maintenanceAndRepair
        ),
        ContainerListContainerAllRateServiceWidget(
            imagePath: AppImageKeys.service44,
            title: AppLanguageKeys.internalServices,
            subTitle: AppLanguageKeys.oils
        ),
        ContainerListContainerAllRateServiceWidget(
            imagePath: AppImageKeys.service99,
            title: AppLanguageKeys.spareParts,
            subTitle: AppLanguageKeys.allChanges
        )
      ],
    );
  }
}

