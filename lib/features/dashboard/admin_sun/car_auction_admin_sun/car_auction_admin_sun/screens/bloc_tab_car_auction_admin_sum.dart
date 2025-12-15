import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/admin_sun/car_auction_admin_sun/car_auction_admin_sun/screens/tab_car_auction_admin_sum_list.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';

class BlocTabCarAuctionAdminSum extends StatefulWidget {
  const BlocTabCarAuctionAdminSum({super.key});

  @override
  State<BlocTabCarAuctionAdminSum> createState() => _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState();
}

class _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState extends State<BlocTabCarAuctionAdminSum> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TabInsuranceNewOffersCubit(),
      child: TabCarAuctionAdminSumList(),
    );
  }
}