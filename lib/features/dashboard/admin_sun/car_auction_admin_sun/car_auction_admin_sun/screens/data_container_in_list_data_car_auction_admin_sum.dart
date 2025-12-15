import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_auction_admin_sun/screens/bloc_tab_car_auction_admin_sum.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_auction_admin_sun/screens/title_with_sub_title_in_car_auction_admin_sun.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';


class DataContainerInListDataCarAuctionAdminSum extends StatelessWidget {
  const DataContainerInListDataCarAuctionAdminSum({super.key});
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
              TitleWithSubTitleInCarAuctionAdminSun(),
              RowNumberCoinWidget(
                  numberText: '250',
                  sizeText: 15,
                  imageSrc: AppImageKeys.coin
              )
            ],
          ),
          Expanded(child: BlocTabCarAuctionAdminSum()),
        ],
      ),
    );
  }
}
