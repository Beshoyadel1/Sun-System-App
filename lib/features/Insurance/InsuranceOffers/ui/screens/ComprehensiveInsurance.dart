import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/InsuranceOffers/logic/ComprehensiveInsuranceCubit.dart';
import '../../../../../features/Insurance/InsuranceOffers/ui/screens/ComprehensiveInsuranceView.dart';

class ComprehensiveInsurance extends StatelessWidget {
  const ComprehensiveInsurance({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ComprehensiveInsuranceCubit(),
      child: const ComprehensiveInsuranceView(),
    );
  }
}
