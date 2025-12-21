import 'package:flutter/cupertino.dart';
import '../../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../../core/theming/text_styles.dart';

class DataContainerPartRatesStatisticsAllServiceProvider extends StatelessWidget {
  const DataContainerPartRatesStatisticsAllServiceProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInAppWidget(
              text:'تقييم لكل الخدمات',
              textSize: 15,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor: AppColors.blackColor,
            ),
            Row(
              spacing: 10,
              children: [
                Image.asset(AppImageKeys.star11,width: 30,),
                TextInAppWidget(
                  text:'5.0',
                  textSize: 15,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor: AppColors.orangeColor,
                ),
              ],
            )
          ],
        ),
        Image.asset(AppImageKeys.backgroundstar,width: 60,)
      ],
    );
  }
}
