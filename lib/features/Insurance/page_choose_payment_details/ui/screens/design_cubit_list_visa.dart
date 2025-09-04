import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_state.dart';
import '../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';

class DesignCubitListVisa extends StatelessWidget {
  const DesignCubitListVisa({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = [
      AppImageKeys.visa1,
      AppImageKeys.visa2,
      AppImageKeys.visa3,
      AppImageKeys.visa4,
      AppImageKeys.visa5,
    ];

    return BlocBuilder<RadioPaymentCubit, RadioPaymentState>(
      buildWhen: (previous, current) {
        final cubit = context.read<RadioPaymentCubit>();

        if (current.selectedIndex == null && current.selectedImage == null) {
          cubit.selectOption(0, cards[0]);
        }

        return true;
      },
      builder: (context, state) {
        final cubit = context.read<RadioPaymentCubit>();

        return Column(
          children: List.generate(cards.length, (index) {
            final isSelected = state.selectedIndex == index;

            return GestureDetector(
              onTap: () => cubit.selectOption(index, cards[index]),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected
                        ? AppColors.orangeColor
                        : AppColors.transparent,
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
                      onChanged: (_) =>
                          cubit.selectOption(index, cards[index]),
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
