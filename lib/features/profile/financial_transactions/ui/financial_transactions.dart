import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/features/profile/financial_transactions/ui/screens/list_design_row_financial_transactions_widget.dart';
import '../../../../features/profile/custom_widget/design_row_financial_transactions_widget.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../features/profile/credit_cards/ui/credit_cards.dart';
import '../../../../features/profile/custom_widget/end_button_profile_widget.dart';
import '../../../../features/profile/my_address/ui/screens/part_two_column_my_address.dart';
import '../../../../features/profile/my_address/ui/screens/part_one_column_my_address.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';

class FinancialTransactions extends StatelessWidget {
  const FinancialTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: const AppbarProfileWidget(
        title: AppLanguageKeys.financialTransactions,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: ListDesignRowFinancialTransactionsWidget(),
          ),
        ),
      ),
    );
  }
}
