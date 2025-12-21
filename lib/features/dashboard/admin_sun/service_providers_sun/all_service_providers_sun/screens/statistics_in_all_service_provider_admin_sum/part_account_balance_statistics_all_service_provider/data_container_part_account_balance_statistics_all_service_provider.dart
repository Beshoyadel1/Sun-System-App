import 'package:flutter/cupertino.dart';
import '../../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../../../features/dashboard/Admin/internal_orders/custom_widget/container_details_widget.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/part_account_balance_statistics_all_service_provider/list_data_view_container_account_balance_data.dart';
import '../../../../../../../../../core/theming/colors.dart';

class DataContainerPartAccountBalanceStatisticsAllServiceProvider
    extends StatelessWidget {
  const DataContainerPartAccountBalanceStatisticsAllServiceProvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                TextInAppWidget(
                  text: 'رصيد الحسابات ',
                  textSize: 14,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor: AppColors.blackColor,
                ),
                RowNumberCoinWidget(
                  numberText: '250',
                  sizeText: 15,
                  imageSrc: AppImageKeys.coin,
                ),
              ],
            ),
            ContainerDetailsWidget(
              textColor: AppColors.whiteColor,
              borderColor: AppColors.transparent,
              backGroundColor: AppColors.orangeColor,
            ),
          ],
        ),
        ListDataViewContainerAccountBalanceData(),
      ],
    );
  }
}
