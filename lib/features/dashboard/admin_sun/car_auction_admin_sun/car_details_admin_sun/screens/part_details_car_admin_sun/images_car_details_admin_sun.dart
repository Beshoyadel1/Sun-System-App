import 'package:flutter/cupertino.dart';
import '../../../../../../../../core/theming/assets.dart';

class ImagesCarDetailsAdminSun extends StatelessWidget {
  const ImagesCarDetailsAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AppImageKeys.car_details1),
        Image.asset(AppImageKeys.car_details2),
        Image.asset(AppImageKeys.car_details3),
      ],
    );
  }
}
