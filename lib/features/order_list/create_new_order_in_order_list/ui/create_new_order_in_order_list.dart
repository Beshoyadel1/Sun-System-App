import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/order_list/create_new_order_in_order_list/ui/screens/list_data_create_new_order_in_order_list.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';

class CreateNewOrderInOrderList extends StatelessWidget {
  const CreateNewOrderInOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title: 'طلب 44121',),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                      child: ListDataCreateNewOrderInOrderList()
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar:
    );
  }
}
