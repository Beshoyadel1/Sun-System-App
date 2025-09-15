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

class ContainerImageBackgroundPinkWidget extends StatelessWidget {
  final String imagPath;
  const ContainerImageBackgroundPinkWidget({super.key,required this.imagPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.redColor.withOpacity(0.24),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Image.asset(imagPath,height: 30,),
    );
  }
}
