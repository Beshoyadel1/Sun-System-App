import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/employee/requests_for_internal_services_emp/first_screen_requests_for_internal_services_emp/screens/bloc_tab_requests_for_internal_services_emp.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/title_with_sub_title_in_first_screen_spare_parts_requests_emp.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';


class DataContainerInListDataFirstScreenRequestsForInternalServicesEmp extends StatelessWidget {
  const DataContainerInListDataFirstScreenRequestsForInternalServicesEmp({super.key});
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
          Expanded(child: BlocTabRequestsForInternalServicesEmp()),
        ],
      ),
    );
  }
}
