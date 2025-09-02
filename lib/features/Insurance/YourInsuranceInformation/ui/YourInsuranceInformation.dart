import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/features/Insurance/YourInsuranceInformation/logic/InsuranceInfoCubit.dart';
import 'package:sun_system_app/features/Insurance/YourInsuranceInformation/ui/screens/_InsuranceInfoView.dart';

class YourInsuranceInformation extends StatelessWidget {
  const YourInsuranceInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InsuranceInfoCubit(),
      child: const InsuranceInfoView(),
    );
  }
}
