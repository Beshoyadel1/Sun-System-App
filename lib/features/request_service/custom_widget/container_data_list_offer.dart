import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/Insurance/insurance_offers/ui/screens/container_best_offer.dart';
import 'package:sun_system_app/features/request_service/custom_widget/row_image_with_two_text.dart';
import 'package:sun_system_app/features/request_service/first_page_in_service_request/ui/screens/row_circle_image_text_loading.dart';
import 'package:sun_system_app/features/request_service/first_page_in_service_request/ui/screens/text_in_select_the_type_of_service.dart';
import 'package:sun_system_app/features/request_service/offers_presented_in_service_request/ui/screens/row_accept_reject_with_icon.dart';
import 'package:sun_system_app/features/warranty/custom_widget/row_number_coin_widget.dart';

class ContainerDataListOffer extends StatelessWidget {
  final bool? isBestOffer;
  const ContainerDataListOffer({super.key,this.isBestOffer=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: isBestOffer!?AppColors.orangeColor:AppColors.transparent
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
          if (isBestOffer!)
          ContainerBestOffer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RowImageWithTwoText(
                imagePath: AppImageKeys.best1,
                text1: AppLanguageKeys.mobileMaintenanceOffer,
                text2: AppLanguageKeys.repairCenterName,
              ),
              Column(
                spacing: 5,
                children: [
                  RowNumberCoinWidget(
                      numberText: '900',
                      sizeText: 18,
                      imageSrc: AppImageKeys.coin
                  ),
                  if (isBestOffer==false)
                    TextInAppWidget(
                      text: AppLanguageKeys.withinOneDay,
                      textSize: 9,
                      fontWeightIndex: FontSelectionData.regularFontFamily,
                      textColor: AppColors.greyColor,
                    ),
                ],
              )
            ],
          ),
          Divider(
            color: AppColors.blackColor25,
            indent: 20,
            endIndent: 20,
          ),
          RowAcceptRejectWithIcon()
        ],
      ),
    );
  }
}
