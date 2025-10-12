import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/internal_orders/custom_widget/container_of_column_request_status_widget.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';

class ColumnRequestStatusWidget extends StatelessWidget {
  final String? text;
  final bool? isAccept,isReject,isNewOrder;
  const ColumnRequestStatusWidget({
    super.key,
    this.isAccept=false,
    this.isReject=false,
    this.isNewOrder=false,
    this.text
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInAppWidget(
          text:text?? AppLanguageKeys.requestStatus,
          textSize: 11,
          fontWeightIndex: FontSelectionData.mediumFontFamily,
          textColor: AppColors.greyColor,
        ),
        ContainerOfColumnRequestStatusWidget(
          isReject: isReject,
          isAccept: isAccept,
          isNewOrder: isNewOrder,
        )
      ],
    );
  }
}
