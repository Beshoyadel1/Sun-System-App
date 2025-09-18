import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/order_list/Rating/ui/Rating.dart';

class ColumnTwoTextInInLastRowContainerMobileServiceInServiceRequest extends StatelessWidget {
  const ColumnTwoTextInInLastRowContainerMobileServiceInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          NavigateToPageWidget(
              RatingDialogWidget()),
        );
      },
      child: Container(
        padding: EdgeInsetsGeometry.all(10),
        decoration: BoxDecoration(
          color: AppColors.orangeColor,
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: TextInAppWidget(
          text: AppLanguageKeys.serviceRating,
          textSize: 10,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor: AppColors.whiteColor,
        ),
      ),
    );
  }
}
