import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/Admin/Petroleum_Service/Petroleum_Filling_Requests/screens/design_new_order_Petroleum/view_list_data_container_design_new_order_Petroleum.dart';
import '../../../../../../core/utilies/map_of_all_app.dart';

class ListDataAllOrdersAreFilledPetroleumFillingRequests extends StatelessWidget {
  const ListDataAllOrdersAreFilledPetroleumFillingRequests({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;
    bool isTabletCustom = size.width > ValuesOfAllApp.mobileWidth && size.width <= ValuesOfAllApp.customTabWidth;
    bool isTab = size.width > ValuesOfAllApp.tabWidth;
    return ViewListDataContainerDesignNewOrderPetroleum();
  }
}

