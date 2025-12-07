import 'package:flutter/cupertino.dart';
import '../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../features/dashboard/employee/spare_parts_requests_emp/custom_widget/time_line_tile_widget.dart';
import '../../../../../../../core/theming/colors.dart';


class DataTimeLineTile extends StatelessWidget{
  const DataTimeLineTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
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
      child: Column(
        children: [
          TimeLineTileWidget(
            isFirst: true,
            isIcon: true,
          ),
          TimeLineTileWidget(
            text: '2',
            title: AppLanguageKeys.onTheWay,
            subTitle: '1/1/2025 -16:00',
            colorAfterLine: AppColors.greyColor,
          ),
          TimeLineTileWidget(
            isLast: true,
            text: '3',
            textColor: AppColors.greyColor,
            title: AppLanguageKeys.orderArrived,
            textColorTitle: AppColors.greyColor,
            subTitle: '',
            colorBeforeLine: AppColors.greyColor,
            colorBorder: AppColors.greyColor,
          ),
        ],
      ),
    );
  }
}
