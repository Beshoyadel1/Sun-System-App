import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/Insurance/CustomWidget/ContainerInstallment.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/ColumnNotPaid.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/ColumnPaid.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/ColumnPaidNextInstallment.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/RowFirstContainerAnnualPayment.dart';

class ContainerAnnualPayment extends StatelessWidget {
  const ContainerAnnualPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(vertical: 13,horizontal: 20),
      //  margin: EdgeInsetsGeometry.all(20),
      decoration: BoxDecoration(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color:AppColors.greyColor.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          RowFirstContainerAnnualPayment(),
          ColumnPaid(),
          ColumnNotPaid(),
          ColumnPaidNextInstallment()
        ],
      ),
    );
  }
}
