import 'package:flutter/material.dart';
import '../../../../../features/car_batteries/choose_time_car_batteries/choose_time_car_batteries.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';

class LastButtonInListDataChooseServiceCarBatteries extends StatelessWidget {
  const LastButtonInListDataChooseServiceCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text:AppLanguageKeys.confirmService,
      textColor: AppColors.whiteColor,
      buttonColor: AppColors.orangeColor,
      textSize: 12,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      heightContainer: 40,
      widthContainer:300,
      borderRadius: 30,
      onTap: (){
        Navigator.of(context).push(
          NavigateToPageWidget(ChooseTimeCarBatteries()),
        );
      },
    );
  }
}
