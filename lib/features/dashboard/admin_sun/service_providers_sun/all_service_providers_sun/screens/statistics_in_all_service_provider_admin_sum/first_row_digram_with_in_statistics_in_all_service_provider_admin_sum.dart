import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_ministry_of_interior_services_statistics_statistics_all_service_provider/container_part_ministry_of_interior_services_statistics_statistics_all_service_provider.dart';
import '../../../../../../../features/dashboard/admin_sun/service_providers_sun/custom_widget/design_container_digram_with_data_in_statistics_in_all_service_provider_widget.dart';

class FirstRowDigramWithInStatisticsInAllServiceProviderAdminSum
    extends StatelessWidget {
  const FirstRowDigramWithInStatisticsInAllServiceProviderAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1360;
    return isMobile
        ? Column(
          spacing: 10,
          children: [
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 320,
                    child:
                        DesignContainerDigramWithDataInStatisticsInAllServiceProviderWidget(),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 320,
                    child:
                        DesignContainerDigramWithDataInStatisticsInAllServiceProviderWidget(
                          isMobileServices: true,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 320,
                    child:
                        DesignContainerDigramWithDataInStatisticsInAllServiceProviderWidget(
                          isSpareParts: true,
                        ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 320,
                    child:
                        ContainerPartMinistryOfInteriorServicesStatisticsStatisticsAllServiceProvider(),
                  ),
                ),
              ],
            ),
          ],
        )
        : Row(
          spacing: 10,
          children: [
            Expanded(
              child: SizedBox(
                height: 320,
                child:
                    DesignContainerDigramWithDataInStatisticsInAllServiceProviderWidget(),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 320,
                child:
                    DesignContainerDigramWithDataInStatisticsInAllServiceProviderWidget(
                      isMobileServices: true,
                    ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 320,
                child:
                    DesignContainerDigramWithDataInStatisticsInAllServiceProviderWidget(
                      isSpareParts: true,
                    ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 320,
                child:
                    ContainerPartMinistryOfInteriorServicesStatisticsStatisticsAllServiceProvider(),
              ),
            ),
          ],
        );
  }
}
