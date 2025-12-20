import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/factory_orders_in_all_service_provider_sun/container_factory_orders_in_all_service_provider_sun.dart';

class FactoryOrdersInAllServiceProviderSun extends StatelessWidget {
  const FactoryOrdersInAllServiceProviderSun({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerFactoryOrdersInAllServiceProviderSun(),
          ContainerFactoryOrdersInAllServiceProviderSun(),
          ContainerFactoryOrdersInAllServiceProviderSun(),
          ContainerFactoryOrdersInAllServiceProviderSun(),
          ContainerFactoryOrdersInAllServiceProviderSun(),
        ],
      ),
    );
  }
}
