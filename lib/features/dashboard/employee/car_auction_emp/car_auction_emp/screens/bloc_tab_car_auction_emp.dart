import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/employee/car_auction_emp/car_auction_emp/screens/tab_car_auction_emp_list.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';


class BlocTabCarAuctionEmp extends StatefulWidget {
  const BlocTabCarAuctionEmp({super.key});

  @override
  State<BlocTabCarAuctionEmp> createState() => _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState();
}

class _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState extends State<BlocTabCarAuctionEmp> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TabInsuranceNewOffersCubit(),
      child: TabCarAuctionEmpList(),
    );
  }
}
