import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/button_widget.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';

class LastButtonInCreateNewOrderInOrderList extends StatelessWidget {
  const LastButtonInCreateNewOrderInOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      iconData: CupertinoIcons.calendar,
      isIconInEnd: false,
        text: AppLanguageKeys.cancelBooking,
        textColor: AppColors.whiteColor,
        buttonColor: AppColors.redColor,
        textSize: 15,
        fontWeightIndex: FontSelectionData.regularFontFamily,
        heightContainer: 40,
        widthContainer: 250,
        borderRadius: 30,
        onTap: () {
          /*Navigator.of(context).push(
            NavigateToPageWidget(
                MobileServiceInServiceRequest()
            ),
          );*/
        }
    );
  }
}
