import 'package:flutter/material.dart';
import 'package:sun_system_app/features/change_car/custom_widget/container_image_with_two_text.dart';
import 'package:sun_system_app/features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../features/change_car/car_cr_v_car_change/ui/screens/list_car_cr_v.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/warranty/warranty_subscription/ui/warranty_subscription.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';

class ListCarCrV extends StatelessWidget {
  const ListCarCrV({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: List.generate(
        cars.length,
            (i) => ContainerImageWithTwoText(
              imageSrc: cars[i]['image']!,
              title: cars[i]['title']!,
              subTitle: cars[i]['sub']!,
            ),
      ),
    );
  }
}
final cars = [
  {
    'title': AppLanguageKeys.myCar,
    'image': AppImageKeys.car2,
    'sub': 'CR - V'
    ,
  },
  {
    'title': 'التعاونية',
    'image': AppImageKeys.company3,
    'sub': AppLanguageKeys.comprehensiveInsurance
  },
  {
    'title': AppLanguageKeys.carBills,
    'image': AppImageKeys.test_car,
    'sub': '11 فاتورة ',
  },
];