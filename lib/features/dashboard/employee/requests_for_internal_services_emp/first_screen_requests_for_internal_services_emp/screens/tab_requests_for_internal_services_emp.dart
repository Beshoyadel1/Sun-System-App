import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/employee/requests_for_internal_services_emp/first_screen_requests_for_internal_services_emp/screens/all_orders/all_orders_requests_for_internal_services_emp.dart';
import '../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/custom_widget/tab_communication_and_policies_emp_widget.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_state.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/language/language_constant.dart';

class TabRequestsForInternalServicesEmp extends StatefulWidget {
  const TabRequestsForInternalServicesEmp({super.key});

  @override
  State<TabRequestsForInternalServicesEmp> createState() => _TabRequestsForInternalServicesEmpState();
}

class _TabRequestsForInternalServicesEmpState extends State<TabRequestsForInternalServicesEmp> {
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
                tabs: eventsNameList.map((eventsName) {
                  final index = eventsNameList.indexOf(eventsName);
                  return TabCommunicationAndPoliciesEmpWidget(
                    isSelected: cubit.currentIndex == index,
                    text: eventsName,
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
    );
  }
}
final List<Widget> widgetInsuranceOffers = const [
  AllOrdersRequestsForInternalServicesEmp(),
  AllOrdersRequestsForInternalServicesEmp(),
  AllOrdersRequestsForInternalServicesEmp(),
  AllOrdersRequestsForInternalServicesEmp(),
];
final List<String> eventsNameList = [
  AppLanguageKeys.allOrders,
  AppLanguageKeys.newOrders,
  AppLanguageKeys.underService,
  AppLanguageKeys.completedOrders,
];