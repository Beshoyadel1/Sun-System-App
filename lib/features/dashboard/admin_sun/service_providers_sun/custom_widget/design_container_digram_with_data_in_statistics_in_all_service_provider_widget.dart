import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../features/dashboard/admin_sun/service_providers_sun/custom_widget/area_chart_digram_widget.dart';
import '../../../../../../core/theming/colors.dart';


class DesignContainerDigramWithDataInStatisticsInAllServiceProviderWidget extends StatelessWidget {
  final bool? isMobileServices,isSpareParts;
  const DesignContainerDigramWithDataInStatisticsInAllServiceProviderWidget({
    super.key,
    this.isMobileServices=false,
    this.isSpareParts=false,
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
        spacing: 20,
        children: [
          Row(
            spacing: 10,
            children: [
              Container(
                padding: EdgeInsetsDirectional.all(10),
                decoration: BoxDecoration(
                  color:isSpareParts!?AppColors.blackColor25:
                  isMobileServices!?AppColors.cyanColor.withOpacity(0.2):AppColors.pinkColor,
                  shape: BoxShape.circle
                ),
                child: Icon(
                  isSpareParts!
                      ? Icons.content_paste_search_rounded
                      : isMobileServices!
                      ? Icons.local_shipping_outlined
                      : Icons.directions_car_filled_outlined,
                  color: isSpareParts!
                      ? AppColors.blackColor44
                      : isMobileServices!
                      ? AppColors.blueColor
                      : AppColors.orangeColor,
                ),
              ),
              Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextInAppWidget(
                    text: isSpareParts!?'قطع غيار':isMobileServices!?'الخدمات المتنقلة والنقل':' صيانات وخدمات داخلية',
                    textSize: 15,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor: AppColors.blackColor,
                  ),
                  TextInAppWidget(
                    text: '120 طلب',
                    textSize: 15,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor: isSpareParts!
                        ? AppColors.blackColor44
                        :isMobileServices!?AppColors.blueColor:AppColors.orangeColor,
                  ),
                ],
              )
            ],
          ),
          AreaChartDigramWidget(
            color: isSpareParts!
                ? AppColors.blackColor44
                :isMobileServices!?AppColors.blueColor:AppColors.orangeColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RowNumberCoinWidget(
                  numberText: '250',
                  sizeText: 15,
                  imageSrc: AppImageKeys.coin,
                  textColor: isSpareParts!
                      ? AppColors.blackColor44
                      :isMobileServices!?AppColors.cyanColor:AppColors.orangeColor,
                  imageColor: isSpareParts!
                      ? AppColors.blackColor44
                      :isMobileServices!?AppColors.cyanColor:AppColors.orangeColor,
              ),
              Row(
                spacing: 10,
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.all(2),
                    decoration: BoxDecoration(
                      color: isSpareParts!
                          ? AppColors.blackColor44
                          :isMobileServices!?AppColors.blueColor:AppColors.orangeColor,
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_upward_rounded,size: 20,color: AppColors.whiteColor,),
                  ),
                  TextInAppWidget(
                    text: 'زيادة 3%',
                    textSize: 15,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor: AppColors.blackColor,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}



