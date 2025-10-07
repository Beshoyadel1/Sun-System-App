import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/internal_orders/first_screen_internal_orders/screens/big_container_of_new_orders/data_container_in_list_data_first_screen_internal_orders.dart';
import '../../../../../../core/theming/colors.dart';


class ContainerNewOrderInListDataFirstScreenInternalOrders extends StatelessWidget {
  final void Function()? onTap;
  final bool? isLoading;
  const ContainerNewOrderInListDataFirstScreenInternalOrders({
    super.key,
    this.onTap,
    this.isLoading=false
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
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
      child: DataContainerInListDataFirstScreenInternalOrders(
        isLoading: isLoading,
        onTap:onTap,
      ),
    );
  }
}
