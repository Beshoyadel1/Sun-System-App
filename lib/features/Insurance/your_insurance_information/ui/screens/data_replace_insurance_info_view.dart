import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/Insurance/custom_widget/loading_widget.dart';

import '../../../../../features/Insurance/your_insurance_information/logic/insurance_info_cubit.dart';
import '../../../../../features/Insurance/your_insurance_information/logic/insurance_info_state.dart';
import '../../../../../features/Insurance/your_insurance_information/ui/screens/data_your_insurance_information.dart';
import '../../../../../features/Insurance/identity_verification/identity_verification.dart';

class DataReplaceInsuranceInfoView extends StatelessWidget {
  const DataReplaceInsuranceInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: BlocListener<InsuranceInfoCubit, InsuranceInfoState>(
          listener: (context, state) {
            if (state is InsuranceInfoSuccess) {
              NavigateToPageWidget(IdentityVerification());
            } else if (state is InsuranceInfoFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
            }
          },
          child: BlocBuilder<InsuranceInfoCubit, InsuranceInfoState>(
            buildWhen: (previous, current) =>
            previous.runtimeType != current.runtimeType,
            builder: (context, state) {
              if (state is InsuranceInfoLoading) {
                return const LoadingWidget();
              }
              return const DataYourInsuranceInformation();
            },
          ),
        ),
      ),
    );
  }
}
