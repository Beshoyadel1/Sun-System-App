import 'package:flutter/material.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';

class AppbarDashboardWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onTap;

  const AppbarDashboardWidget({super.key, this.onTap,required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
      title: TextInAppWidget(
        text: title,
        textSize: 18,
        fontWeightIndex: FontSelectionData.mediumFontFamily,
        textColor: AppColors.darkColor,
      ),
      actions: [
        Image.asset(AppImageKeys.notify, width: 30),
        SizedBox(width: 20,),
        Image.asset(AppImageKeys.person, width: 30),
        SizedBox(width: 30,),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
