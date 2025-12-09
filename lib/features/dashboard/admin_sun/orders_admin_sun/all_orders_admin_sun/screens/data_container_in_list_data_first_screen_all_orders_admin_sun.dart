import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/orders_admin_sun/all_orders_admin_sun/screens/bloc_tab_all_orders_admin_sun.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/title_with_sub_title_in_first_screen_spare_parts_requests_emp.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';


class DataContainerInListDataFirstScreenAllOrdersAdminSun extends StatelessWidget {
  const DataContainerInListDataFirstScreenAllOrdersAdminSun({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 30,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleWithSubTitleInFirstScreenSparePartsRequestsEmp(),
              RowNumberCoinWidget(
                  numberText: '250',
                  sizeText: 15,
                  imageSrc: AppImageKeys.coin
              )
            ],
          ),
          Expanded(child: BlocTabAllOrdersAdminSun()),
        ],
      ),
    );
  }
}
