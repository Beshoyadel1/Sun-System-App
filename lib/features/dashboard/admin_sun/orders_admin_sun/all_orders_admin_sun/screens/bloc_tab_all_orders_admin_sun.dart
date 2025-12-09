import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/admin_sun/orders_admin_sun/all_orders_admin_sun/screens/tab_all_orders_admin_sun.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';


class BlocTabAllOrdersAdminSun extends StatefulWidget {
  const BlocTabAllOrdersAdminSun({super.key});

  @override
  State<BlocTabAllOrdersAdminSun> createState() => _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState();
}

class _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState extends State<BlocTabAllOrdersAdminSun> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TabInsuranceNewOffersCubit(),
      child: TabAllOrdersAdminSun(),
    );
  }
}
