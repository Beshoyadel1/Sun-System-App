import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/Insurance/insurance_offers/ui/screens/container_best_offer.dart';
import 'package:sun_system_app/features/request_service/custom_widget/row_image_with_two_text.dart';
import 'package:sun_system_app/features/request_service/first_page_in_service_request/ui/screens/row_circle_image_text_loading.dart';
import 'package:sun_system_app/features/request_service/first_page_in_service_request/ui/screens/text_in_select_the_type_of_service.dart';
import 'package:sun_system_app/features/request_service/offers_presented_in_service_request/ui/screens/row_accept_reject_with_icon.dart';
import 'package:sun_system_app/features/warranty/custom_widget/row_number_coin_widget.dart';

class ContainerIconWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String imagPath;
  final void Function()? onTap;
  const ContainerIconWidget({super.key ,this.onPressed, required this.imagPath,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: AppColors.orangeColor,
          shape: BoxShape.circle,
          border: Border.all(
              color: AppColors.transparent
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.darkColor.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Image.asset(imagPath)
        ,
      ),
    );
  }
}
