import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/change_car/add_information_car_change_car/ui/screens/design_first_text_in_second_part_list_car_in_add_information_car_change_car.dart';
import 'package:sun_system_app/features/insurance_new/custom_widget/first_name_textfield_identity_verification_new_widget.dart';

class DesignContainerAddInSecondPartListCarInAddInformationCarChangeCar extends StatelessWidget {
  final void Function()? onPressed;
  const DesignContainerAddInSecondPartListCarInAddInformationCarChangeCar({
    super.key,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color:AppColors.pinkColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(Icons.add,color: AppColors.orangeColor,),
        onPressed: onPressed,
    )
    );
  }
}
