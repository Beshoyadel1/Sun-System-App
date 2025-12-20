import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/factory_orders_in_all_service_provider_sun/mobile_data_container_factory_orders_in_all_service_provider_sun.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/factory_orders_in_all_service_provider_sun/tab_custom_data_container_factory_orders_in_all_service_provider_sun.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/factory_orders_in_all_service_provider_sun/tab_data_container_factory_orders_in_all_service_provider_sun.dart';

class DataContainerFactoryOrdersInAllServiceProviderSun extends StatelessWidget {
  final double? widthMobile;
  final void Function()? onTap;
  final String? imageSrc1,
      title1,
      subTitle1,
      imageSrc2,
      nameCar2,
      kindCar2,
      imageSrc3,
      title3,
      subTitle3,
      text5;

  const DataContainerFactoryOrdersInAllServiceProviderSun({
    super.key,
    this.widthMobile,
    this.onTap,
    this.imageSrc1,
    this.title1,
    this.subTitle1,
    this.imageSrc2,
    this.kindCar2,
    this.nameCar2,
    this.subTitle3,
    this.title3,
    this.imageSrc3,
    this.text5,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile ?? 700);
    bool isTabletCustom = size.width > 700 && size.width <= 1100;

    return isTabletCustom
        ? TabCustomDataContainerFactoryOrdersInAllServiceProviderSun(
          onTap: onTap,
          imageSrc1: imageSrc1,
          subTitle1: subTitle1,
          title1: title1,
          imageSrc2: imageSrc2,
          kindCar2: kindCar2,
          nameCar2: nameCar2,
          title3: title3,
          subTitle3: subTitle3,
          imageSrc3: imageSrc3,
          text5: text5,
        )
        : isMobile
        ? MobileDataContainerFactoryOrdersInAllServiceProviderSun(
          onTap: onTap,
          imageSrc1: imageSrc1,
          subTitle1: subTitle1,
          title1: title1,
          imageSrc2: imageSrc2,
          kindCar2: kindCar2,
          nameCar2: nameCar2,
          title3: title3,
          subTitle3: subTitle3,
          imageSrc3: imageSrc3,
          text5: text5,
        )
        : TabDataContainerFactoryOrdersInAllServiceProviderSun(
          onTap: onTap,
          imageSrc1: imageSrc1,
          subTitle1: subTitle1,
          title1: title1,
          imageSrc2: imageSrc2,
          kindCar2: kindCar2,
          nameCar2: nameCar2,
          title3: title3,
          subTitle3: subTitle3,
          imageSrc3: imageSrc3,
          text5: text5,
        );
  }
}
