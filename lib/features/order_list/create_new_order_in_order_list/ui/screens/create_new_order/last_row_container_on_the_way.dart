import 'package:flutter/cupertino.dart';
import '../../../../../../features/order_list/create_new_order_in_order_list/ui/screens/create_new_order/column_two_text_in_in_last_row_container_on_the_way.dart';
import '../../../../../../features/order_list/create_new_order_in_order_list/ui/screens/create_new_order/row_image_with_two_text_in_last_row_container_on_the_way.dart';

class LastRowContainerCreateNewOrder extends StatelessWidget {
  const LastRowContainerCreateNewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RowImageWithTwoTextInLastRowContainerCreateNewOrder(),
        ColumnTwoTextInInLastRowContainerCreateNewOrder(),
      ],
    );
  }
}
