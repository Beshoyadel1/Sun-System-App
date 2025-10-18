import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/dashboard/car_model_settings/first_screen_car_model_settings/screens/data_container_in_list_data_first_screen_car_model_settings.dart';
import '../../../../../core/theming/colors.dart';

class ListDataFirstScreenCarModelSettings extends StatelessWidget {
  const ListDataFirstScreenCarModelSettings({super.key});

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
      child: DataContainerInListDataFirstScreenCarModelSettings(),
    );
  }
}
