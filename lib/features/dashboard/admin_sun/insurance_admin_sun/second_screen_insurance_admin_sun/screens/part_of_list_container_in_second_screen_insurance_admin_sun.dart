import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/custom_widget/design_container_text_with_image_or_icon.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/custom_widget/design_container_image_with_two_text_widget.dart';

class PartOfListContainerInSecondScreenInsuranceAdminSun extends StatelessWidget {
  final void Function()? onTap;
  const PartOfListContainerInSecondScreenInsuranceAdminSun({
    super.key,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1240;
    return isMobile?
    Column(
      spacing: 10,
      children: [
        Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DesignContainerImageWithTwoTextWidget(
              title: 'أجمالي دفعات التأمين ',
              subTitle: '50000 ريال',
              isFlex:true,
            ),
            DesignContainerImageWithTwoTextWidget(
              imagePath: AppImageKeys.account_sun2,
              title: 'الرصيد القابل التحويل',
              subTitle: ' 50000 نقطة ',
              isFlex:true,
            ),
          ],
        ),
        Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DesignContainerImageWithTwoTextWidget(
              imagePath: AppImageKeys.account_sun3,
              title: 'الدفعات المتأخرة',
              subTitle: '10000 ريال',
              isFlex:true,
            ),
            DesignContainerTextWithImageOrIcon(
              imagePath: AppImageKeys.icon_arrow,
              text: 'تحويل رصيد للمنشأة',
              onTap:onTap ,
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
              title: 'أجمالي دفعات التأمين ',
              subTitle: '50000 ريال',
            ),
            DesignContainerImageWithTwoTextWidget(
              imagePath: AppImageKeys.account_sun2,
              title: 'الرصيد القابل التحويل',
              subTitle: ' 50000 نقطة ',
            ),
            DesignContainerImageWithTwoTextWidget(
              imagePath: AppImageKeys.account_sun3,
              title: 'الدفعات المتأخرة',
              subTitle: '10000 ريال',
            ),
          ],
        ),
        DesignContainerTextWithImageOrIcon(
          imagePath: AppImageKeys.icon_arrow,
          text: 'تحويل رصيد للمنشأة',
          onTap:onTap,
        )
      ],
    );
  }
}
