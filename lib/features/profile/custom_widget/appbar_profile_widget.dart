import 'package:flutter/material.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/colors.dart';

class AppbarProfileWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onTap;

  const AppbarProfileWidget({super.key, this.onTap,required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(color: AppColors.scaffoldColor),
      title: TextInAppWidget(
        text: title,
        textSize: 18,
        fontWeightIndex: FontSelectionData.mediumFontFamily,
        textColor: AppColors.darkColor,
      ),
      leading: Container(
        width: 10,
        height: 10,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: IconButton(
            onPressed: onTap ?? () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.darkColor,
              size: 20,
            ),
          ),
        ),
      ),
      actions: [
        Image.asset(AppImageKeys.person, width: 30),
        SizedBox(width: 10,),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
