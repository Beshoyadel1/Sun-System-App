import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/fonts.dart';
import '../../../../../../../../core/theming/text_styles.dart';

class TextContainerUploadDataWidget extends StatelessWidget {
  final String? text,textContainer;
  const TextContainerUploadDataWidget({
    super.key,
    this.text,
    this.textContainer
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        TextInAppWidget(
          text:text??'شهادة سجل تجاري',
          textSize: 15,
          fontWeightIndex: FontSelectionData.regularFontFamily,
          textColor:AppColors.blackColor,
        ),
        Container(
          padding: EdgeInsetsDirectional.symmetric(vertical: 4,horizontal: 20),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(
                color: AppColors.blackColor
            ),
          ),
          child: Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.file_open_outlined,color: AppColors.blackColor,),
              TextInAppWidget(
                text:textContainer??'File.PDF',
                textSize: 13,
                fontWeightIndex: FontSelectionData.regularFontFamily,
                textColor:AppColors.blackColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}
