import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/language/language_constant.dart';
import '../../../../../../features/dashboard/admin_sun/managing_policy_pages_admin_sun/custom_widget/container_select_with_color_orange_widget.dart';
import '../../../../../../features/dashboard/admin_sun/managing_policy_pages_admin_sun/managing_policy_pages_admin_sun/logic/Select_tab_container_orange.dart';

class DataSelectAdvertisements extends StatelessWidget {
  const DataSelectAdvertisements({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SelectTabContainerOrange(),
      child: Builder(
        builder: (context) {
          return Row(
            spacing: 10,
            children: [
              _buildItem(context, index: 0, text: AppLanguageKeys.advertisements),
              _buildItem(context, index: 1, text: AppLanguageKeys.discount),
              _buildItem(context, index: 2, text: AppLanguageKeys.coupon),
            ],
          );
        },
      ),
    );
  }

  Widget _buildItem(BuildContext context,
      {required int index, required String text}) {
    final cubit = context.read<SelectTabContainerOrange>();

    return GestureDetector(
      onTap: () => cubit.select(index),
      child: BlocBuilder<SelectTabContainerOrange, int>(
        buildWhen: (previous, current) =>
        previous == index || current == index,
        builder: (context, selectedIndex) {
          return ContainerSelectWithColorOrangeWidget(
            text: text,
            isSelected: selectedIndex == index,
          );
        },
      ),
    );
  }
}
