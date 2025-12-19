import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/orders_in_all_companies_admin_sum/container_orders_in_all_companies_admin_sum.dart';
import '../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/statistics_in_all_compaines_admin_sum/statistics_in_all_companies_admin_sum.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_auction_admin_sun/screens/all_cars_admin_sum/all_cars_admin_sum.dart';
import '../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/custom_widget/tab_communication_and_policies_emp_widget.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_state.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/language/language_constant.dart';

class TabAllCompaniesAdminSunList extends StatefulWidget {
  const TabAllCompaniesAdminSunList({super.key});

  @override
  State<TabAllCompaniesAdminSunList> createState() =>
      _TabAllCompaniesAdminSunListState();
}

class _TabAllCompaniesAdminSunListState
    extends State<TabAllCompaniesAdminSunList> {
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
  StatisticsInAllCompaniesAdminSum(),
  ContainerOrdersInAllCompaniesAdminSum(),
  AllCarsAdminSum(),
  AllCarsAdminSum(),
  AllCarsAdminSum(),
  AllCarsAdminSum(),
];
final List<String> eventsNameList = [
  AppLanguageKeys.statistics,
  AppLanguageKeys.allOrders,
  AppLanguageKeys.establishmentData,
  AppLanguageKeys.identity,
  AppLanguageKeys.allCars,
  AppLanguageKeys.drivers,
];
