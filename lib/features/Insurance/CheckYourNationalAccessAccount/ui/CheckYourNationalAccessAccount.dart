import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/Insurance/CheckYourNationalAccessAccount/ui/screens/ContainerCheckYourNationalAccessAccount.dart';
import '../../../../../features/Insurance/CustomWidget/AppBarInsuranceOffers.dart';


class CheckYourNationalAccessAccount extends StatelessWidget {
  const CheckYourNationalAccessAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppBarInsuranceOffers(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextInAppWidget(
                  text:AppLanguageKeys.checkAbsherAccount,
                  textSize: 16,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor:AppColors.darkColor,
                ),
                SizedBox(
                  height: 20,
                ),
                ContainerCheckYourNationalAccessAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
