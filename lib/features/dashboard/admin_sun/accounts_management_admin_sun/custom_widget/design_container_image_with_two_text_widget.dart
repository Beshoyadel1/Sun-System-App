import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/dashboard/Admin/service_settings/custom_widget/container_image_widget.dart';

class DesignContainerImageWithTwoTextWidget extends StatelessWidget {
  final String? imagePath, title, subTitle;
  final double? textSizeTitle,
      textSizeSubTitle,
      imageContainerWidth,
      imageContainerHeight;
  final Color? subTitleColor, titleColor, imageContainerColor;
  final bool? isBorder, isFlex;

  const DesignContainerImageWithTwoTextWidget({
    super.key,
    this.imagePath,
    this.title,
    this.subTitle,
    this.textSizeTitle,
    this.textSizeSubTitle,
    this.subTitleColor,
    this.titleColor,
    this.isBorder = false,
    this.isFlex=false,
    this.imageContainerColor,
    this.imageContainerHeight,
    this.imageContainerWidth,
  });

  @override
  Widget build(BuildContext context) {
    return isFlex!
        ? Flexible(
          child: Container(
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
              spacing: 10,
              children: [
                Flexible(
                  child: ContainerImageWidget(
                    imagePath: imagePath ?? AppImageKeys.account_sun1,
                    color: imageContainerColor ?? AppColors.pinkColor,
                    isBorder: isBorder ?? false,
                    width: imageContainerWidth ?? 70,
                    height: imageContainerHeight,
                  ),
                ),
                TitleWithSubTitle(
                  title: title ?? 'أجمالي الارصدة ',
                  subTitle: subTitle ?? '50000 ريال',
                  textSizeTitle: textSizeTitle ?? 15,
                  textSizeSubTitle: textSizeSubTitle ?? 14,
                  subTitleColor: subTitleColor ?? AppColors.orangeColor,
                  titleColor: titleColor ?? AppColors.blackColor,
                ),
              ],
            ),
          ),
        )
        : Container(
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
            spacing: 10,
            children: [
              ContainerImageWidget(
                imagePath: imagePath ?? AppImageKeys.account_sun1,
                color: imageContainerColor ?? AppColors.pinkColor,
                isBorder: isBorder ?? false,
                width: imageContainerWidth ?? 70,
                height: imageContainerHeight,
              ),
              TitleWithSubTitle(
                title: title ?? 'أجمالي الارصدة ',
                subTitle: subTitle ?? '50000 ريال',
                textSizeTitle: textSizeTitle ?? 15,
                textSizeSubTitle: textSizeSubTitle ?? 14,
                subTitleColor: subTitleColor ?? AppColors.orangeColor,
                titleColor: titleColor ?? AppColors.blackColor,
              ),
            ],
          ),
        );
  }
}
