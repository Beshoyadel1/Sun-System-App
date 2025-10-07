import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/internal_orders/first_screen_internal_orders/screens/part_two_screen_first_screen_internal_orders/container_profits_from_ministry_of_interior_services/data_in_container_profits_from_ministry_of_interior_services.dart';
import '../../../../../../../core/theming/colors.dart';

class ContainerProfitsFromMinistryOfInteriorServices extends StatelessWidget {
  const ContainerProfitsFromMinistryOfInteriorServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
            color: AppColors.greyColor.withOpacity(0.3)
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: DataInContainerProfitsFromMinistryOfInteriorServices(),
    );
  }
}
