import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../../../core/theming/colors.dart';

class ContainerDataViewContainerNumberRequestEmpDataWidget
    extends StatelessWidget {
  const ContainerDataViewContainerNumberRequestEmpDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: AppColors.greyColor.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageWithTwoText(
            imageSrc: AppImageKeys.person22,
            title: 'أسم الوظيفة',
            textSizeTitle: 12,
            titleColor: AppColors.greyColor,
            subTitle: 'محمد عبد الله',
            subTitleColor: AppColors.blackColor,
            textSizeSubTitle: 12,
          ),
          TextInAppWidget(
            text: '120 طلب',
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.orangeColor,
          ),
        ],
      ),
    );
  }
}
