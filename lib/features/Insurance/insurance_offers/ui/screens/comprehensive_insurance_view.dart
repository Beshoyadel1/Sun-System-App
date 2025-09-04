import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';


import '../../../../../features/Insurance/custom_widget/widget_container_comprehensive_insurance.dart';
import '../../../../../features/Insurance/insurance_offers/logic/comprehensive_insurance_cubit.dart';

class ComprehensiveInsuranceView extends StatelessWidget {
  const ComprehensiveInsuranceView({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> companies = [
      AppImageKeys.company1,
      AppImageKeys.company2,
      AppImageKeys.company3,
      AppImageKeys.company4,
      AppImageKeys.company1,
      AppImageKeys.company2,
      AppImageKeys.company3,
      AppImageKeys.company4,
    ];

    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: BlocBuilder<ComprehensiveInsuranceCubit, int?>(
            builder: (context, selectedIndex) {
              return Column(
                children: List.generate(companies.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      context.read<ComprehensiveInsuranceCubit>().selectCompany(index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: WidgetContainerComprehensiveInsurance(
                        imageSrc: companies[index],
                        nameCompany:AppLanguageKeys.cooperativeInsurance,
                        isSelected: selectedIndex == index,
                      ),
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
