import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/dashboard/Admin/internal_orders/custom_widget/select_time_profit_service_widget.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/dashboard/Admin/car_model_settings/custom_widget/container_edit_delete_widget.dart';
import '../../../../../../core/theming/colors.dart';

class DesignContainerAdvertisementsUploadedWidget extends StatelessWidget {
  final void Function()? onPressedEdit,onPressedDelete;
  final String? imagePath;
  const DesignContainerAdvertisementsUploadedWidget({
    super.key,
    this.onPressedDelete,
    this.onPressedEdit,
    this.imagePath
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.greyColor.withOpacity(0.3)
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 20,
        children: [
          Row(
            spacing: 10,
            children: [
              ContainerEditDeleteWidget(
                isDelete: true,
                onPressed:onPressedDelete,
              ),
              ContainerEditDeleteWidget(
                onPressed: onPressedEdit,
              ),
            ],
          ),
          Image.asset(imagePath??AppImageKeys.test_advertisements,),
          Row(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInAppWidget(
                text:AppLanguageKeys.from,
                textSize: 13,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor:AppColors.blackColor,
              ),
              SelectTimeProfitServiceWidget(
                hint: '00/00/0000',
                isTime: true,
                backGroundColor: AppColors.whiteColor,
                textColor: AppColors.greyColor,
                borderColor:AppColors.greyColor,
                width: 150,
              ),
              TextInAppWidget(
                text:AppLanguageKeys.to,
                textSize: 13,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor:AppColors.blackColor,
              ),
              SelectTimeProfitServiceWidget(
                hint: '00/00/0000',
                isTime: true,
                backGroundColor: AppColors.whiteColor,
                textColor: AppColors.greyColor,
                borderColor:AppColors.greyColor,
                width: 150,
              ),
            ],
          )
        ],
      ),
    );
  }
}