import 'package:flutter/cupertino.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../../features/dashboard/employee/mobility_requests_emp/custom_widget/column_image_car_with_two_text_widget.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class FirstPartOfDataDialogRejectOrder extends StatelessWidget {
  const FirstPartOfDataDialogRejectOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        TextInAppWidget(
          text:' رفض طلب رقم #452',
          textSize: 18,
          fontWeightIndex: FontSelectionData.semiBoldFontFamily,
          textColor:AppColors.blackColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageWithTwoText(
              imageSrc: AppImageKeys.service33,
              title: 'خدمات داخلية',
              subTitle: 'صيانة واصلاج',
              titleColor: AppColors.orangeColor,
              subTitleColor:AppColors.blackColor,
            ),
            ColumnImageCarWithTwoTextWidget(
              imageSrc: AppImageKeys.car1,
              kindCar:'Ariya',
              nameCar:'Nissan',
            ),
          ],
        )
      ],
    );
  }
}
