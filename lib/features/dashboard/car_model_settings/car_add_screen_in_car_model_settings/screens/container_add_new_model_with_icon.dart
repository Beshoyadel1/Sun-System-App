import 'package:flutter/cupertino.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';

class ContainerAddNewModelWithIcon extends StatelessWidget {
  const ContainerAddNewModelWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.darkBlueColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 5,
        children: [
          const Icon(
            CupertinoIcons.add,
            color: AppColors.whiteColor,
            size: 15,
          ),
          TextInAppWidget(
            text: 'إضافة موديل سيارة',
            textSize: 12,
            fontWeightIndex: FontSelectionData.mediumFontFamily,
            textColor: AppColors.whiteColor,
          ),
        ],
      ),
    );
  }
}
