import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/order_list/first_page_order_list/ui/screens/list_data_first_page_order_list.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';

class FirstPageOrderList extends StatelessWidget {
  const FirstPageOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title: AppLanguageKeys.myOrders,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                    child: ListDataFirstPageOrderList()
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
