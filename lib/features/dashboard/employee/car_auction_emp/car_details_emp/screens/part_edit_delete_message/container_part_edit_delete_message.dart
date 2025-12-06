import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/employee/car_auction_emp/car_details_emp/screens/part_edit_delete_message/data_container_part_edit_delete_message.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerPartEditDeleteMessage extends StatelessWidget {
  const ContainerPartEditDeleteMessage({super.key});

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
      child: DataContainerPartEditDeleteMessage(),
    );
  }
}
