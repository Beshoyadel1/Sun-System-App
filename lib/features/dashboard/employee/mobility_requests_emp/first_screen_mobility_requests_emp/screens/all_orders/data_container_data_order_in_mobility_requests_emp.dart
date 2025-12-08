import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/all_orders/mobile_data_container_data_order_in_mobility_requests_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/all_orders/tab_custom_data_container_data_order_in_mobility_requests_emp.dart';
import '../../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/all_orders/tab_data_container_data_order_in_mobility_requests_emp.dart';

class DataContainerDataOrderInMobilityRequestsEmp extends StatelessWidget {
  final double? widthMobile,widthTabletCustom;
  final void Function()? onTap;
  final bool? isAccept4,isReject4,isNewOrder4,isTruck4;
  final String? numberText1,imageSrc2,title2,subTitle2,imageSrc3,kindCar3,nameCar3,title5,subTitle5,price6;
  const DataContainerDataOrderInMobilityRequestsEmp({
    super.key,
    this.widthMobile,
    this.widthTabletCustom,
    this.onTap,
    this.numberText1,
    this.imageSrc2,
    this.subTitle2,
    this.title2,
    this.imageSrc3,
    this.kindCar3,
    this.nameCar3,
    this.isAccept4=false,
    this.isReject4=false,
    this.isNewOrder4=false,
    this.isTruck4=false,
    this.title5,
    this.subTitle5,
    this.price6,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= (widthMobile??900);
    bool isTabletCustom = size.width > (widthMobile??900) && size.width <= (widthTabletCustom??1200);

    return isMobile?
    MobileDataContainerDataOrderInMobilityRequestsEmp(
      onTap: onTap,
      numberText1:numberText1,
      imageSrc2:imageSrc2,
      subTitle2:subTitle2,
      title2:title2,
      imageSrc3:imageSrc3,
      kindCar3:kindCar3,
      nameCar3:nameCar3,
      isAccept4:isAccept4,
      isNewOrder4:isNewOrder4,
      isReject4:isReject4,
      isTruck4:isTruck4,
      subTitle5:subTitle5,
      title5:title5,
      price6:price6,
    )
    :
    isTabletCustom?
    TabCustomDataContainerDataOrderInMobilityRequestsEmp(
      onTap: onTap,
      numberText1:numberText1,
      imageSrc2:imageSrc2,
      subTitle2:subTitle2,
      title2:title2,
      imageSrc3:imageSrc3,
      kindCar3:kindCar3,
      nameCar3:nameCar3,
      isAccept4:isAccept4,
      isNewOrder4:isNewOrder4,
      isReject4:isReject4,
      isTruck4:isTruck4,
      subTitle5:subTitle5,
      title5:title5,
      price6:price6,
    )
        :
    TabDataContainerDataOrderInMobilityRequestsEmp(
      onTap: onTap,
      numberText1:numberText1,
      imageSrc2:imageSrc2,
      subTitle2:subTitle2,
      title2:title2,
      imageSrc3:imageSrc3,
      kindCar3:kindCar3,
      nameCar3:nameCar3,
      isAccept4:isAccept4,
      isNewOrder4:isNewOrder4,
      isReject4:isReject4,
      isTruck4:isTruck4,
      subTitle5:subTitle5,
      title5:title5,
      price6:price6,
    );
  }
}