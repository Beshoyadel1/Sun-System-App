import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/custom_widget/text_with_circle_container_color_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

class FirstTitleWithSubItemsInDataContainerDesignOrderSalesStatisticsAdminSum
    extends StatelessWidget {
  const FirstTitleWithSubItemsInDataContainerDesignOrderSalesStatisticsAdminSum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1275;
    return isMobile
        ? Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInAppWidget(
                text: 'مبيعات الطلبات ',
                textSize: 14,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.blackColor,
              ),
              TextWithCircleContainerColorWidget(
                title: 'مبيعات السنة السابقة',
                color: AppColors.greyColor,
              ),
              TextWithCircleContainerColorWidget(
                title: 'مبيعات السنة الحالية',
                color: AppColors.orangeColor,
              ),
            ],
          ),
        )
        : Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInAppWidget(
                text: 'مبيعات الطلبات ',
                textSize: 14,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.blackColor,
              ),
              Row(
                spacing: 10,
                children: [
                  TextWithCircleContainerColorWidget(
                    title: 'مبيعات السنة السابقة',
                    color: AppColors.greyColor,
                  ),
                  TextWithCircleContainerColorWidget(
                    title: 'مبيعات السنة الحالية',
                    color: AppColors.orangeColor,
                  ),
                ],
              ),
            ],
          ),
        );
  }
}
