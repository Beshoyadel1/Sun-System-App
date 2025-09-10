import 'package:flutter/cupertino.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/last_button_screen_warranty_first.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/second_part_page_warranty_first.dart';
import '../../../../../features/warranty/warranty_first/ui/screens/first_part_page_warranty_first.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
class ContainerDesignWarrantyFirst extends StatelessWidget {
  const ContainerDesignWarrantyFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        spacing: 35,
        children: [
          FirstPartPageWarrantyFirst(),
          SecondPartPageWarrantyFirst(),
          LastButtonScreenWarrantyFirst(),
        ],
      ),
    );
  }
}
