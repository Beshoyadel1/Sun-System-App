import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/Insurance/CustomWidget/ContainerInstallment.dart';
class ColumnNotPaid extends StatelessWidget {
  const ColumnNotPaid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        ContainerInstallment(
          isNotPaid: true,
          textButton: AppLanguageKeys.payInstallment,
          textInstallment: AppLanguageKeys.thirdInstallment,
          textIsPaid: AppLanguageKeys.notPaid,
          textMoney: '1000',
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}
