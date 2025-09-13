import 'package:flutter/material.dart';
import '../../../../../features/change_car/car_cr_v_car_change/ui/screens/list_car_cr_v.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/warranty/warranty_subscription/ui/warranty_subscription.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class CarCrVCarChange extends StatelessWidget {
  const CarCrVCarChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title: 'سيارة CR  - V',),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
              child: ListCarCrV()
          ),
        ),
      ),
    );
  }
}
