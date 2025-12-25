import 'package:flutter/cupertino.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/custom_widget/design_container_image_with_two_text_widget.dart';

class PartOfListContainerInStatisticsDataRightAdminSun extends StatelessWidget {
  const PartOfListContainerInStatisticsDataRightAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1200;
    return isMobile
        ? Column(
          spacing: 10,
          children: [
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DesignContainerImageWithTwoTextWidget(
                  textSizeTitle: 12,
                  textSizeSubTitle: 12,
                  isFlex: true,
                ),
                DesignContainerImageWithTwoTextWidget(
                  imagePath: AppImageKeys.account_sun2,
                  title: 'عدد النقاط للمستخدم',
                  subTitle: ' 5000 نقطة ',
                  textSizeTitle: 12,
                  textSizeSubTitle: 12,
                  isFlex: true,
                ),
              ],
            ),
            Row(
              children: [
                DesignContainerImageWithTwoTextWidget(
                  imagePath: AppImageKeys.account_sun3,
                  title: 'أرباح من الباقات',
                  subTitle: '30000 ريال ',
                  textSizeTitle: 12,
                  textSizeSubTitle: 12,
                  isFlex: true,
                ),
              ],
            ),
          ],
        )
        : Row(
          spacing: 10,
          children: [
            DesignContainerImageWithTwoTextWidget(
              textSizeTitle: 12,
              textSizeSubTitle: 12,
              isFlex: true,
            ),
            DesignContainerImageWithTwoTextWidget(
              imagePath: AppImageKeys.account_sun2,
              title: 'عدد النقاط للمستخدم',
              subTitle: ' 5000 نقطة ',
              textSizeTitle: 12,
              textSizeSubTitle: 12,
              isFlex: true,
            ),
            DesignContainerImageWithTwoTextWidget(
              imagePath: AppImageKeys.account_sun3,
              title: 'أرباح من الباقات',
              subTitle: '30000 ريال ',
              textSizeTitle: 12,
              textSizeSubTitle: 12,
              isFlex: true,
            ),
          ],
        );
  }
}
