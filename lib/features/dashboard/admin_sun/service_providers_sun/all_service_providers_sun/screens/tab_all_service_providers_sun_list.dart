import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/statistics_in_all_service_provider_admin_sum/statistics_in_all_service_provider_admin_sum.dart';
import '../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/facility_data_in_all_service_provider_sum/facility_data_in_all_service_provider_sum.dart';
import '../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/factory_orders_in_all_service_provider_sun/factory_orders_in_all_service_provider_sun.dart';
import '../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/custom_widget/tab_communication_and_policies_emp_widget.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_state.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/language/language_constant.dart';

class TabAllServiceProvidersSunList extends StatefulWidget {
  const TabAllServiceProvidersSunList({super.key});

  @override
  State<TabAllServiceProvidersSunList> createState() =>
      _TabAllServiceProvidersSunListState();
}

class _TabAllServiceProvidersSunListState
    extends State<TabAllServiceProvidersSunList> {
  late TabInsuranceNewOffersCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<TabInsuranceNewOffersCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabInsuranceNewOffersCubit, TabInsuranceNewOffersState>(
      buildWhen: (previous, current) => current is TabInsuranceChangedState,
      builder: (context, state) {
        return DefaultTabController(
          length: eventsNameList.length,
          child: Column(
            children: [
              TabBar(
                onTap: (index) {
                  cubit.changeTab(index);
                },
                tabAlignment: TabAlignment.start,
                labelPadding: EdgeInsets.zero,
                indicatorColor: AppColors.transparent,
                dividerColor: AppColors.transparent,
                isScrollable: true,
                tabs:
                    eventsNameList.map((eventsName) {
                      final index = eventsNameList.indexOf(eventsName);
                      return TabCommunicationAndPoliciesEmpWidget(
                        isSelected: cubit.currentIndex == index,
                        text: eventsName,
                      );
                    }).toList(),
              ),
              Expanded(child: TabBarView(children: widgetInsuranceOffers)),
            ],
          ),
        );
      },
    );
  }
}

final List<Widget> widgetInsuranceOffers = const [
  StatisticsInAllServiceProviderAdminSum(),
  FactoryOrdersInAllServiceProviderSun(),
  FacilityDataInAllServiceProviderSum(),
  FacilityDataInAllServiceProviderSum(),
  FacilityDataInAllServiceProviderSum(),
  FacilityDataInAllServiceProviderSum(),
  FacilityDataInAllServiceProviderSum(),
];
final List<String> eventsNameList = [
  AppLanguageKeys.statistics,
  AppLanguageKeys.establishmentOrders,
  AppLanguageKeys.establishmentData,
  AppLanguageKeys.identity,
  AppLanguageKeys.branches,
  AppLanguageKeys.workingHours,
  AppLanguageKeys.bankAccount,
];
