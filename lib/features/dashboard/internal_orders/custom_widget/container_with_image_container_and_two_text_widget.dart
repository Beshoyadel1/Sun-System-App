import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class ContainerWithImageContainerAndTwoTextWidget extends StatelessWidget {
  final String imagePath,title,subTitle;
  const ContainerWithImageContainerAndTwoTextWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsetsGeometry.symmetric(vertical: 10,horizontal: 25),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
              color: AppColors.greyColor.withOpacity(0.3)
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkColor.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          spacing: 10,
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsetsGeometry.symmetric(vertical: 10,horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColors.pinkColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.darkColor.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Image.asset(imagePath,width: 30,),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextInAppWidget(
                    text:title,
                    textSize: 12,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor:AppColors.blackColor,
                  ),
                  TextInAppWidget(
                    text:subTitle,
                    textSize: 12,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    textColor:AppColors.orangeColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
