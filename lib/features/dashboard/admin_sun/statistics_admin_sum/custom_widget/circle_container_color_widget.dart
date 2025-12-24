import 'package:flutter/cupertino.dart';
import '../../../../../../../core/theming/colors.dart';

class CircleContainerColorWidget extends StatelessWidget {
  final Color? color;
  final double? paddingNumber;
  const CircleContainerColorWidget({
    super.key,
    this.color,
    this.paddingNumber
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingNumber??5),
      decoration: BoxDecoration(
          color: color??AppColors.blackColor44,
          shape: BoxShape.circle
      ),
    );
  }
}
