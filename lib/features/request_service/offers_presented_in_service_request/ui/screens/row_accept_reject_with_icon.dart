import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/pages_widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/offers_presented_in_service_request/ui/offers_presented_in_service_request.dart';
import 'package:sun_system_app/features/request_service/your_request_on_the_way_in_service_request/ui/your_request_on_the_way_in_service_request.dart';

class RowAcceptRejectWithIcon extends StatelessWidget {
  const RowAcceptRejectWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: [
        Flexible(
          child: ButtonWidget(
            isIconInEnd: false,
            text:AppLanguageKeys.acceptOffer,
            textColor: AppColors.darkColor,
            buttonColor: AppColors.blueColor100,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            heightContainer: 40,
            widthContainer:150,
            borderRadius: 30,
            iconData: Icons.check,
            iconColor: AppColors.darkColor,
            onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(YourRequestOnTheWayInServiceRequest()),
              );
            },
          ),
        ),
        Flexible(
          child: ButtonWidget(
            isIconInEnd: false,
            text:AppLanguageKeys.rejectRequest,
            textColor: AppColors.darkColor,
            buttonColor: AppColors.redColor.withOpacity(0.24),
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            heightContainer: 40,
            widthContainer:150,
            borderRadius: 30,
            iconData: Icons.close,
            iconColor: AppColors.darkColor,
            onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(YourRequestOnTheWayInServiceRequest()),
              );
            },
          ),
        ),
      ],
    );
  }
}
