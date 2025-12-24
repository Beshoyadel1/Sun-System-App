import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/statistics_admin_sum/custom_widget/circle_container_color_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

class TextWithCircleContainerColorWidget extends StatelessWidget {
  final String? title, subTitle;
  final Color? color;
  final double? paddingNumber;
  const TextWithCircleContainerColorWidget({
    super.key,
    this.color,
    this.title,
    this.subTitle,
    this.paddingNumber
  });

  @override
  Widget build(BuildContext context) {
    return subTitle != null
        ? Row(
          spacing: 10,
          children: [
            CircleContainerColorWidget(color: color,paddingNumber: paddingNumber,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInAppWidget(
                  text: title ?? 'مبيعات الطلبات ',
                  textSize: 15,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor: AppColors.blackColor,
                ),
                TextInAppWidget(
                  text: subTitle ?? 'مبيعات الطلبات ',
                  textSize: 12,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor: AppColors.greyColor,
                ),
              ],
            ),
          ],
        )
        : Row(
          spacing: 10,
          children: [
            TextInAppWidget(
              text: title ?? 'مبيعات الطلبات ',
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.blackColor,
            ),
            CircleContainerColorWidget(color: color,paddingNumber: paddingNumber,),
          ],
        );
  }
}
