import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/container_design_warranty_first.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/last_button_screen_warranty_first.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/second_part_page_warranty_first.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/first_part_page_warranty_first.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';

class WarrantyFirst extends StatelessWidget {
  const WarrantyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title: AppLanguageKeys.sunWarranty,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentGeometry.center,
            child: SizedBox(
              width: 500,
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: ContainerDesignWarrantyFirst()
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
