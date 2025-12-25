import 'package:flutter/cupertino.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../features/dashboard/admin_sun/accounts_management_admin_sun/custom_widget/design_container_image_with_two_text_widget.dart';

class MobileViewFirstListDataInFirstScreenStatisticsAdminSum extends StatelessWidget {
  const MobileViewFirstListDataInFirstScreenStatisticsAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          spacing: 10,
          children: [
            DesignContainerImageWithTwoTextWidget(
              imageContainerColor: AppColors.orangeColor,
              imagePath: AppImageKeys.test963,
              title: 'عدد الطلبات',
              subTitle: '500 طلب',
              imageContainerWidth: 50,
              isFlex: true,
            ),DesignContainerImageWithTwoTextWidget(
              imageContainerColor: AppColors.orangeColor,
              imagePath: AppImageKeys.test963,
              title: 'عدد العملاء',
              subTitle: '1000 عميل',
              imageContainerWidth: 50,
              isFlex: true,
            ),

          ],
        ),
        Row(
          spacing: 10,
          children: [
            DesignContainerImageWithTwoTextWidget(
              imageContainerColor: AppColors.orangeColor,
              imagePath: AppImageKeys.test963,
              title: 'عدد الشركات',
              subTitle: '50 عميل',
              imageContainerWidth: 50,
              isFlex: true,
            ),
            DesignContainerImageWithTwoTextWidget(
              imageContainerColor: AppColors.orangeColor,
              imagePath: AppImageKeys.test963,
              title: 'عدد الطلبات',
              subTitle: '500 طلب',
              imageContainerWidth: 50,
              isFlex: true,
            ),
          ],
        ),
        Row(
          spacing: 10,
          children: [
            DesignContainerImageWithTwoTextWidget(
            imageContainerColor: AppColors.orangeColor,
            imagePath: AppImageKeys.test963,
            title: 'عدد العملاء',
            subTitle: '1000 عميل',
            imageContainerWidth: 50,
            isFlex: true,
          ),
            DesignContainerImageWithTwoTextWidget(
              imageContainerColor: AppColors.orangeColor,
              imagePath: AppImageKeys.test963,
              title: 'عدد الشركات',
              subTitle: '50 عميل',
              imageContainerWidth: 50,
              isFlex: true,
            ),

          ],
        ),
        Row(
          spacing: 10,
          children: [
            DesignContainerImageWithTwoTextWidget(
              imageContainerColor: AppColors.orangeColor,
              imagePath: AppImageKeys.test963,
              title: 'مزودي الخدمة',
              subTitle: '500 طلب',
              imageContainerWidth: 50,
              isFlex: true,
            ),DesignContainerImageWithTwoTextWidget(
              imageContainerColor: AppColors.orangeColor,
              imagePath: AppImageKeys.test963,
              title: 'مبيعات الطلبات',
              subTitle: '1000 عميل',
              imageContainerWidth: 50,
              isFlex: true,
            ),

          ],
        ),
        Row(
          spacing: 10,
          children: [
            DesignContainerImageWithTwoTextWidget(
              imageContainerColor: AppColors.orangeColor,
              imagePath: AppImageKeys.test963,
              title: 'تأمينات السيارات',
              subTitle: '50 عميل',
              imageContainerWidth: 50,
              isFlex: true,
            ),
            DesignContainerImageWithTwoTextWidget(
              imageContainerColor: AppColors.orangeColor,
              imagePath: AppImageKeys.test963,
              title: 'مزودي الخدمة',
              subTitle: '500 طلب',
              imageContainerWidth: 50,
              isFlex: true,
            ),
          ],
        ),
        Row(
          spacing: 10,
          children: [
            DesignContainerImageWithTwoTextWidget(
              imageContainerColor: AppColors.orangeColor,
              imagePath: AppImageKeys.test963,
              title: 'مبيعات الطلبات',
              subTitle: '1000 عميل',
              imageContainerWidth: 50,
              isFlex: true,
            ),
            DesignContainerImageWithTwoTextWidget(
              imageContainerColor: AppColors.orangeColor,
              imagePath: AppImageKeys.test963,
              title: 'تأمينات السيارات',
              subTitle: '50 عميل',
              imageContainerWidth: 50,
              isFlex: true,
            ),
          ],
        ),
      ],
    );
  }
}
