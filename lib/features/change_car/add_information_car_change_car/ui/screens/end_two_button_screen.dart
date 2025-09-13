import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/button_widget.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';

class EndTwoButtonScreen extends StatelessWidget {
  const EndTwoButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            ButtonWidget(
              isIconInEnd: false,
              text:AppLanguageKeys.transferCar,
              textColor: AppColors.whiteColor,
              buttonColor: AppColors.darkColor34,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              heightContainer: 40,
              widthContainer:120,
              borderRadius: 30,
             // iconData: Icons.add,
              onTap: (){},
            ),
            ButtonWidget(
              isIconInEnd: false,
              text:AppLanguageKeys.deleteCar,
              textColor: AppColors.whiteColor,
              buttonColor: AppColors.redColor,
              textSize: 12,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              heightContainer: 40,
              widthContainer:120,
              borderRadius: 30,
              onTap: (){},
            ),
          ],
        ),
      ],
    );
  }
}
