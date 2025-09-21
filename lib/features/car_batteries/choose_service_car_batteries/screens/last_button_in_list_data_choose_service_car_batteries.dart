import 'package:flutter/material.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../features/car_batteries/choose_service_car_batteries/choose_service_car_batteries.dart';
import '../../../../../features/change_car/add_information_car_change_car/ui/add_information_car_change_car.dart';
import '../../../../../features/profile/custom_widget/end_button_profile_widget.dart';
import '../../../../../features/change_car/my_car_data_car_change/ui/screens/list_my_car_in_data_car_change.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';


class LastButtonInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const LastButtonInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      isIconInEnd: false,
      text:AppLanguageKeys.bookService,
      textColor: AppColors.whiteColor,
      buttonColor: AppColors.orangeColor,
      textSize: 12,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      heightContainer: 40,
      widthContainer:300,
      borderRadius: 30,
      iconData: Icons.calendar_month,
      onTap: (){
        Navigator.of(context).push(
          NavigateToPageWidget(ChooseServiceCarBatteries()),
        );
      },
    );
  }
}
