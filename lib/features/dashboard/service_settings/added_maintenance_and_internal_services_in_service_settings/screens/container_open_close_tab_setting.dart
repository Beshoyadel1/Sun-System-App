import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/dashboard/service_settings/added_maintenance_and_internal_services_in_service_settings/logic/Details_container_setting_cubit.dart';
import '../../../../../features/dashboard/service_settings/added_maintenance_and_internal_services_in_service_settings/logic/Details_container_setting_state.dart';


class ContainerOpenCloseTabSetting extends StatelessWidget {
  const ContainerOpenCloseTabSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsContainerSettingCubit, DetailsContainerSettingState>(
        builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            color: AppColors.greyColor,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () =>
                context.read<DetailsContainerSettingCubit>().toggle(),
            icon: Icon(
              state.isExpanded
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down,
              color: AppColors.whiteColor,
            ),
          ),
        );
      }
    );
  }
}
