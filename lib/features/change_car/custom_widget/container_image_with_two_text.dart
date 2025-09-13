import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/change_car/car_bills_change_car/ui/car_bills_change_car.dart';
import 'package:sun_system_app/features/change_car/custom_widget/image_with_two_text.dart';

class ContainerImageWithTwoText extends StatelessWidget {
  final String imageSrc;
  final String title;
  final String subTitle;
   ContainerImageWithTwoText({
     super.key,
     required this.imageSrc,
     required this.title,
     required this.subTitle,
   });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ImageWithTwoText(
            imageSrc: imageSrc,
            title: title,
            subTitle: subTitle
        ),
        InkWell(
          onTap: (){
            Navigator.of(context).push(
              NavigateToPageWidget(CarBillsChangeCar()),
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            decoration: BoxDecoration(
              color:AppColors.pinkColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color:AppColors.orangeColor
              ),
            ),
            child: TextInAppWidget(
                text: AppLanguageKeys.details,
                textSize: 10,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor:AppColors.orangeColor
            ),
          ),
        ),
      ],
    );
  }
}
