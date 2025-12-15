import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/theming/fonts.dart';
import '../../../../../../core/theming/text_styles.dart';
import '../../../../../../core/theming/assets.dart';
import '../../../../../../core/theming/colors.dart';


class DesignContainerTextWithImageOrIcon extends StatelessWidget {
  final void Function()? onTap;
  final String? imagePath,text;
  final double? textSize;
  final Color? textColor,iconColor,containerColor;
  final IconData? iconData;
  const DesignContainerTextWithImageOrIcon({
    super.key,
    this.onTap,
    this.imagePath,
    this.containerColor,
    this.text,
    this.textColor,
    this.textSize,
    this.iconData,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 7,horizontal: 12),
        decoration: BoxDecoration(
          color: containerColor??AppColors.blueColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imagePath != null?
            Image.asset(imagePath??AppImageKeys.icon_arrow)
            :Icon(iconData??CupertinoIcons.forward,color:iconColor??AppColors.whiteColor,),
            TextInAppWidget(
              text:text??'تحويل رصيد للمنشأة',
              textSize:textSize?? 13,
              fontWeightIndex: FontSelectionData.regularFontFamily,
              textColor:textColor??AppColors.whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}