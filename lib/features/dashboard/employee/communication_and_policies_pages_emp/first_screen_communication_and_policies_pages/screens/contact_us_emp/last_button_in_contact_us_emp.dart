import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';

class LastButtonInContactUsEmp extends StatelessWidget {
  final void Function()? onTap;
  const LastButtonInContactUsEmp({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text:AppLanguageKeys.send,
      isFirstImageText: true,
      image: AppImageKeys.iconSend,
      textColor: AppColors.whiteColor,
      buttonColor: AppColors.orangeColor,
      textSize: 12,
      fontWeightIndex: FontSelectionData.regularFontFamily,
      heightContainer: 30,
      widthContainer:150,
      borderRadius: 30,
      onTap: onTap,
    );
  }
}
