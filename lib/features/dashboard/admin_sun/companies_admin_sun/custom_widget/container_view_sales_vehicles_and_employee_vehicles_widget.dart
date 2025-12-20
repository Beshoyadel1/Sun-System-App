import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/Admin/car_model_settings/custom_widget/container_edit_delete_widget.dart';
import '../../../../../../features/dashboard/admin_sun/companies_admin_sun/custom_widget/container_row_count_name_image_number_edit_car_widget.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class ContainerViewSalesVehiclesAndEmployeeVehiclesWidget extends StatelessWidget {
  const ContainerViewSalesVehiclesAndEmployeeVehiclesWidget({super.key});

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
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextInAppWidget(
                text:'سيارات المبيعات',
                textSize: 15,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor:AppColors.orangeColor,
              ),
              Row(
                spacing: 5,
                children: [
                  TextInAppWidget(
                    text:'تعديل',
                    textSize: 13,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor:AppColors.blackColor,
                    decorationText: TextDecoration.underline,
                  ),
                  ContainerEditDeleteWidget(
                    colorBackGround: AppColors.darkColor34,
                    size: 12,
                  )
                ],
              ),
            ],
          ),
          ContainerRowCountNameImageNumberEditCarWidget(),
          ContainerRowCountNameImageNumberEditCarWidget(),
          ContainerRowCountNameImageNumberEditCarWidget(),
        ],
      ),
    );
  }
}
