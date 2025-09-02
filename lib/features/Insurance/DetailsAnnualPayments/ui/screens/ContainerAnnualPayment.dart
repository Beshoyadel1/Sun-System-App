import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/Insurance/CustomWidget/ContainerInstallment.dart';
import 'package:sun_system_app/features/Insurance/DetailsAnnualPayments/ui/screens/RowFirstContainerAnnualPayment.dart';

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
          SizedBox(height: 30,),
          ContainerInstallment(
              textButton: AppLanguageKeys.details,
              textInstallment: AppLanguageKeys.firstInstallment,
              textIsPaid: AppLanguageKeys.paid,
              textMoney: '1000',
          ),
          SizedBox(height: 30,),
          ContainerInstallment(
            textButton: AppLanguageKeys.details,
            textInstallment: AppLanguageKeys.secondInstallment,
            textIsPaid: AppLanguageKeys.paid,
            textMoney: '1000',
          ),
          SizedBox(height: 30,),
          ContainerInstallment(
            isNotPaid: true,
            textButton: AppLanguageKeys.payInstallment,
            textInstallment: AppLanguageKeys.thirdInstallment,
            textIsPaid: AppLanguageKeys.notPaid,
            textMoney: '1000',
          ),
          SizedBox(height: 30,),
          ContainerInstallment(
            isNextInstallment: true,
            textInstallment: AppLanguageKeys.fourthInstallment,
            textIsPaid: AppLanguageKeys.nextInstallmentJuly,
            textMoney: '1000',
          ),
          SizedBox(height: 30,),
          ContainerInstallment(
            isNextInstallment: true,
            textInstallment: AppLanguageKeys.fourthInstallment,
            textIsPaid: AppLanguageKeys.nextInstallmentAugust,
            textMoney: '1000',
          ),
        ],
      ),
    );
  }
}
