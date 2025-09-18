import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/features/Insurance/custom_widget/appbar_insurance_offers.dart';
import 'package:sun_system_app/features/order_list/create_new_order_in_order_list/ui/screens/last_button_in_create_new_order_in_order_list.dart';
import 'package:sun_system_app/features/order_list/create_new_order_in_order_list/ui/screens/list_data_create_new_order_in_order_list.dart';
import 'package:sun_system_app/features/profile/custom_widget/appbar_profile_widget.dart';

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
