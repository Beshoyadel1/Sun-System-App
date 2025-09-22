import 'package:flutter/cupertino.dart';
import '../../../../../core/theming/colors.dart';

class ContainerModelCarInListDataConfirmServiceBookingCarBatteries extends StatelessWidget {
  const ContainerModelCarInListDataConfirmServiceBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.whiteColor.withOpacity(0.8),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
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
      child: Column(
        children: [
          //
        ],
      ),
    );
  }
}
