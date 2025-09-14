import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';

class ContainerPartFinishServiceInListDataInFirstPageInServiceRequest extends StatelessWidget {
  final String day,date;
  final bool isSelected;

  const ContainerPartFinishServiceInListDataInFirstPageInServiceRequest({
    super.key,
    required this.day,
    required this.date,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 15),
      width: 60,
      decoration: BoxDecoration(
        color:isSelected?AppColors.orangeColor: AppColors.whiteColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          TextInAppWidget(
            text: day,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor:isSelected?AppColors.whiteColor: AppColors.greyColor,
          ),
          TextInAppWidget(
            text: date,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: isSelected?AppColors.whiteColor: AppColors.greyColor,
          ),
        ],
      ),
    );
  }
}
