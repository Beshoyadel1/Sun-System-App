import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/custom_widget/design_container_text_with_image_or_icon.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/custom_widget/design_container_image_with_two_text_widget.dart';

class PartOfListContainerInFirstScreenAccountsManagementAdminSun extends StatelessWidget {
  const PartOfListContainerInFirstScreenAccountsManagementAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1180;
    return isMobile?
    Column(
      spacing: 10,
      children: [
        Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DesignContainerImageWithTwoTextWidget(

            ),
            DesignContainerImageWithTwoTextWidget(
              imagePath: AppImageKeys.account_sun2,
              title: 'عدد النقاط للمستخدم',
              subTitle: ' 5000 نقطة ',
            ),
          ],
        ),
        Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DesignContainerImageWithTwoTextWidget(
              imagePath: AppImageKeys.account_sun3,
              title: 'أرباح من الباقات',
              subTitle: '30000 ريال ',
            ),
            DesignContainerTextWithImageOrIcon(
              imagePath: AppImageKeys.icon_arrow,
              text: 'تحويل رصيد للمنشأة',
            ),
          ],
        ),

      ],
    )
        :
      Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 10,
          children: [
            DesignContainerImageWithTwoTextWidget(

            ),
            DesignContainerImageWithTwoTextWidget(
              imagePath: AppImageKeys.account_sun2,
              title: 'عدد النقاط للمستخدم',
              subTitle: ' 5000 نقطة ',
            ),
            DesignContainerImageWithTwoTextWidget(
              imagePath: AppImageKeys.account_sun3,
              title: 'أرباح من الباقات',
              subTitle: '30000 ريال ',
            ),
          ],
        ),
        DesignContainerTextWithImageOrIcon(
          imagePath: AppImageKeys.icon_arrow,
          text: 'تحويل رصيد للمنشأة',
        )
      ],
    );
  }
}
