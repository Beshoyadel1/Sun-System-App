import 'package:flutter/cupertino.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_auction_emp/screens/title_with_sub_title_in_car_auction_emp.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_auction_emp/screens/bloc_tab_car_auction_emp.dart';


class DataContainerInListDataCarAuctionEmp extends StatelessWidget {
  const DataContainerInListDataCarAuctionEmp({super.key});
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
              TitleWithSubTitleInCarAuctionEmp(),
              RowNumberCoinWidget(
                  numberText: '250',
                  sizeText: 15,
                  imageSrc: AppImageKeys.coin
              )
            ],
          ),
          Expanded(child: BlocTabCarAuctionEmp()),
        ],
      ),
    );
  }
}
