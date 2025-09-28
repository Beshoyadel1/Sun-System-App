import 'package:flutter/cupertino.dart';
import '../../../../../core/utilies/map_of_all_app.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/dashboard/service_settings/custom_widget/container_image_widget.dart';
import '../../../../../features/dashboard/service_settings/first_screen_service_settings/screens/container_return_to_page_setting.dart';
import '../../../../../core/theming/colors.dart';


class ContainerInDataContainerInListDataFirstScreenServiceSettingWidget extends StatelessWidget {
  final String imagePath, title;
  final void Function()? onTap;

  const ContainerInDataContainerInListDataFirstScreenServiceSettingWidget({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= ValuesOfAllApp.mobileWidth;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: AppColors.greyColor.withOpacity(0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: isMobile
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              ContainerImageWidget(
                imagePath: imagePath,
                color: AppColors.greyColor,
                width: 50,
                height: 50,
              ),
              TextInAppWidget(
                text: title,
                textSize: 13,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor: AppColors.blackColor,
                maxLines: 2,
                isEllipsisTextOverflow: true,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerReturnToPageSetting(
                color: AppColors.orangeColor,
                text: AppLanguageKeys.addServices,
                icon: CupertinoIcons.add,
                onTap: onTap,
              ),
            ],
          ),
        ],
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              spacing: 10,
              children: [
                ContainerImageWidget(
                  imagePath: imagePath,
                  color: AppColors.greyColor,
                  width: 50,
                  height: 50,
                ),
                Expanded(
                  child: TextInAppWidget(
                    text: title,
                    textSize: 13,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor: AppColors.blackColor,
                    maxLines: 1,
                    isEllipsisTextOverflow: true,
                  ),
                ),
              ],
            ),
          ),
          ContainerReturnToPageSetting(
            color: AppColors.orangeColor,
            text: AppLanguageKeys.addServices,
            icon: CupertinoIcons.add,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

