import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/change_car/add_information_car_change_car/ui/screens/design_first_text_in_second_part_list_car_in_add_information_car_change_car.dart';
import 'package:sun_system_app/features/insurance_new/custom_widget/first_name_textfield_identity_verification_new_widget.dart';

class DesignContainerUploadFileInSecondPartListCarInAddInformationCarChangeCar extends StatelessWidget {
  final String text;
  const DesignContainerUploadFileInSecondPartListCarInAddInformationCarChangeCar({
    super.key,
   required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
        width:150,
        height: 40,
        decoration: BoxDecoration(
          color:AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color:AppColors.darkColor
          ),
        ),
      child: Row(
        spacing: 5,
        children: [
          Image.asset(AppImageKeys.file2,),
          Flexible(
            child: TextInAppWidget(
              text:text,
              textSize: 12,
              fontWeightIndex: FontSelectionData.mediumFontFamily,
              textColor:AppColors.greyColor,
            ),
          ),
        ],
      )
    );
  }
}
