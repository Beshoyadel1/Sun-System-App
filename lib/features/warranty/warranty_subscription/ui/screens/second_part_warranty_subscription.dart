import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/container_design_warranty_first.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/last_button_screen_warranty_first.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/second_part_page_warranty_first.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/first_part_page_warranty_first.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';

class SecondPartWarrantySubscription extends StatelessWidget {
  const SecondPartWarrantySubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          SecondPartWarrantySubscription(),
          ButtonWidget(
            text: AppLanguageKeys.payment,
            textColor: AppColors.darkColor,
            buttonColor: AppColors.whiteColor,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            heightContainer: 40,
            borderRadius: 30,
            onTap: () {}
          ),
        ],
      ),
    );
  }
}
