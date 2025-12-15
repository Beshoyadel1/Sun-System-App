import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/first_screen_car_auction_admin_sun/screens/all_first_screen_car_auction_list/all_first_screen_car_auction_list.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/title_with_sub_title_in_first_screen_spare_parts_requests_emp.dart';


class DataContainerInListDataFirstScreenCarAuctionAdminSun extends StatelessWidget {
  const DataContainerInListDataFirstScreenCarAuctionAdminSun({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 30,
        children: [
          TitleWithSubTitleInFirstScreenSparePartsRequestsEmp(
            title: 'مزودي الخدمة لمراكز بيع سيارات',
            subTitle:'يمكنك لدخولالتفاصيل لكل منشأة ',
          ),
          AllFirstScreenCarAuctionList()
        ],
      ),
    );
  }
}
