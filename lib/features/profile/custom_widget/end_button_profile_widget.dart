import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/pages_widgets/button_widget.dart';
import 'package:sun_system_app/features/profile/custom_widget/end_button_profile_widget.dart';
import '../../../../features/profile/my_address/ui/screens/part_two_column_my_address.dart';
import '../../../../features/profile/my_address/ui/screens/part_one_column_my_address.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';
class EndButtonProfileWidget extends StatelessWidget {
  final String textButton;
  void Function()? onTap;
   EndButtonProfileWidget({super.key,required this.textButton,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ButtonWidget(
          isIconInEnd: false,
          text:textButton,
          textColor: AppColors.whiteColor,
          buttonColor: AppColors.orangeColor,
          textSize: 12,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          heightContainer: 40,
          widthContainer:300,
          borderRadius: 30,
          iconData: Icons.add,
          onTap: onTap,
        ),
      ],
    );
  }
}
