import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/Insurance/PageChoosePaymentDetails/logic/RadioPaymentState.dart';
import '../../../../../features/Insurance/CustomWidget/ContainerInvoiceWidget.dart';
import '../../../../../features/Insurance/PageChoosePaymentDetails/logic/RadioPaymentCubit.dart';
import '../../../../../features/Insurance/CustomWidget/ContainerInstallmentPaymentWidget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/CustomWidget/AppBarInsuranceOffers.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/ContainerAnnualPayment.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/FirstRowInsuranceOffers.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/RowImageLabelButtonMoneyDetailsAnnualPayments.dart';

class DesignCubitListVisa extends StatelessWidget {
  const DesignCubitListVisa({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioPaymentCubit, RadioPaymentState>(
      builder: (context, state) {
        final cubit = context.read<RadioPaymentCubit>();
        final cards = [
          AppImageKeys.visa1,
          AppImageKeys.visa2,
          AppImageKeys.visa3,
          AppImageKeys.visa4,
          AppImageKeys.visa5,
        ];

        return Column(
          children: List.generate(cards.length, (index) {
            final isSelected = state.selectedIndex == index;

            return GestureDetector(
              onTap: () => cubit.selectOption(index, cards[index]),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected ? AppColors.orangeColor : AppColors.transparent,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Radio<int>(
                      value: index,
                      groupValue: state.selectedIndex,
                      activeColor: AppColors.orangeColor,
                      onChanged: (_) => cubit.selectOption(index, cards[index]),
                    ),
                    Expanded(
                      child: Image.asset(
                        cards[index],
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
