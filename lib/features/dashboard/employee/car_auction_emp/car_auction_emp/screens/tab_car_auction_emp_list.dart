import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_auction_emp/screens/all_cars/all_cars.dart';
import '../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/custom_widget/tab_communication_and_policies_emp_widget.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_state.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/language/language_constant.dart';

class TabCarAuctionEmpList extends StatefulWidget {
  const TabCarAuctionEmpList({super.key});

  @override
  State<TabCarAuctionEmpList> createState() => _TabCarAuctionEmpListState();
}

class _TabCarAuctionEmpListState extends State<TabCarAuctionEmpList> {
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
  AllCars(),
  AllCars(),
  AllCars(),
];
final List<String> eventsNameList = [
  AppLanguageKeys.allCars,
  AppLanguageKeys.newCars,
  AppLanguageKeys.usedCars,
];