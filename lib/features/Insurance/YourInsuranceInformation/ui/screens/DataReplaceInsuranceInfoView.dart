import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';

import '../../../../../features/Insurance/YourInsuranceInformation/logic/InsuranceInfoCubit.dart';
import '../../../../../features/Insurance/YourInsuranceInformation/logic/InsuranceInfoState.dart';
import '../../../../../features/Insurance/YourInsuranceInformation/ui/screens/DataYourInsuranceInformation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/Insurance/IdentityVerification/IdentityVerification.dart';


class DataReplaceInsuranceInfoView extends StatelessWidget {
  const DataReplaceInsuranceInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: BlocConsumer<InsuranceInfoCubit, InsuranceInfoState>(
          listener: (context, state) {
            if (state is InsuranceInfoSuccess) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const IdentityVerification(),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is InsuranceInfoLoading) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SizedBox(height: 50),
                    CircularProgressIndicator(),
                    SizedBox(height: 10),
                    TextInAppWidget(
                      text:AppLanguageKeys.pleaseWait,
                      textSize: 20,
                      fontWeightIndex: FontSelectionData.mediumFontFamily,
                      textColor:AppColors.darkColor,
                    ),
                  ],
                ),
              );
            }
            return const DataYourInsuranceInformation();
          },
        ),
      ),
    );
  }
}
