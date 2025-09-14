import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/request_service/first_page_in_service_request/logic/select_service_cubit/service_selection_cubit.dart';
import '../../../../../features/request_service/first_page_in_service_request/ui/screens/select_the_type_of_service.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/language/language_constant.dart';


class SelectTheTypeOfServiceScreen extends StatelessWidget {
  const SelectTheTypeOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ServiceSelectionCubit(),
      child: const SelectTheTypeOfService(),
    );
  }
}
