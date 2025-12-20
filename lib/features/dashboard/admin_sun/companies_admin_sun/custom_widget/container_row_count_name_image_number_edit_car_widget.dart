import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../features/dashboard/Admin/car_model_settings/custom_widget/container_edit_delete_widget.dart';
import '../../../../../../../../features/dashboard/Admin/service_settings/custom_widget/Container_number_widget.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class ContainerRowCountNameImageNumberEditCarWidget extends StatelessWidget {
  const ContainerRowCountNameImageNumberEditCarWidget({super.key});

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
          Row(
              spacing: 10,
              children: [
                ContainerNumberWidget(
                  textNumber: '5',
                  textSize: 10,
                  backGroundColor: AppColors.orangeColor,
                  horizontal: 5,
                  vertical: 5,
                ),
                TextInAppWidget(
                  text:'نيسان - صني',
                  textSize: 12,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor:AppColors.blackColor,
                ),
                Image.asset(AppImageKeys.car1,width: 50,)
              ]
          ),
          Row(
              spacing: 10,
              children: [
                TextInAppWidget(
                  text:'س ث ب 245',
                  textSize: 12,
                  fontWeightIndex: FontSelectionData.regularFontFamily,
                  textColor:AppColors.blackColor,
                ),
                ContainerEditDeleteWidget(
                  colorBackGround: AppColors.darkColor34,
                  size: 12,
                )
              ]
          ),
        ],
      ),
    );
  }
}
