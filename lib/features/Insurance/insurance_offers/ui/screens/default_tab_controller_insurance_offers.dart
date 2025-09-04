import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/Insurance/insurance_offers/ui/screens/third_party_insurance.dart';
import '../../../../../features/Insurance/insurance_offers/ui/screens/comprehensive_insurance.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/custom_widget/tab_insurance_offers.dart';
import '../../../../../features/Insurance/insurance_offers/logic/tab_insurance_offers_cubit.dart';
import '../../../../../core/language/language_constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DefaultTabControllerInsuranceOffers extends StatelessWidget {
  const DefaultTabControllerInsuranceOffers({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> eventsNameList = [
      AppLanguageKeys.comprehensiveInsurance,
      AppLanguageKeys.thirdPartyInsurance,
    ];

    final List<Widget> widgetInsuranceOffers = const [
      ComprehensiveInsurance(),
      ThirdPartyInsurance(),
    ];

    return BlocProvider(
      create: (_) => TabInsuranceOffersCubit(),
      child: BlocBuilder<TabInsuranceOffersCubit, int>(
        builder: (context, selectedIndex) {
          return DefaultTabController(
            length: eventsNameList.length,
            child: Column(
              children: [
                TabBar(
                  onTap: (index) {
                    context.read<TabInsuranceOffersCubit>().changeTab(index);
                  },
                  tabAlignment: TabAlignment.start,
                  labelPadding: EdgeInsets.zero,
                  indicatorColor: AppColors.transparent,
                  dividerColor: AppColors.transparent,
                  isScrollable: true,
                  tabs: eventsNameList.map((eventsName) {
                    final index = eventsNameList.indexOf(eventsName);
                    return tabInsuranceOffers(
                      isSelected: selectedIndex == index,
                      evenname: eventsName,
                    );
                  }).toList(),
                ),
                Expanded(
                  child: TabBarView(
                    children: widgetInsuranceOffers,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
