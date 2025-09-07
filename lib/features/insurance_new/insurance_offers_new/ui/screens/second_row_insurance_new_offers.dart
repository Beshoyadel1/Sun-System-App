import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/insurance_new/insurance_offers_new/ui/screens/row_image_text_insurance_new_offers_part_one.dart';
import 'package:sun_system_app/features/insurance_new/insurance_offers_new/ui/screens/row_image_text_insurance_new_offers_part_two.dart';

class SecondRowInsuranceNewOffers extends StatelessWidget {
  const SecondRowInsuranceNewOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowImageTextInsuranceNewOffersPartOne(),
        RowImageTextInsuranceNewOffersPartTwo()
      ],
    );
  }
}
