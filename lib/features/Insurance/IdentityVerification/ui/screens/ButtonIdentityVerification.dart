import 'package:flutter/cupertino.dart';
import '../../../../../features/Insurance/CustomWidget/EndButtonScreen.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/CheckYourNationalAccessAccount/ui/CheckYourNationalAccessAccount.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';

class ButtonIdentityVerification extends StatelessWidget {
  const ButtonIdentityVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return EndButtonScreen(
        text: AppLanguageKeys.identityVerification,
        textColor: AppColors.whiteColor,
        buttonColor: AppColors.orangeColor,
        onTap:(){
          Navigator.of(context).push(
            NavigateToPageWidget(CheckYourNationalAccessAccount()),
          );
        }
    );
  }
}
