import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/tab_all_service_providers_sun_list.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';

class BlocTabAllServiceProvidersSun extends StatefulWidget {
  const BlocTabAllServiceProvidersSun({super.key});

  @override
  State<BlocTabAllServiceProvidersSun> createState() => _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState();
}

class _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState extends State<BlocTabAllServiceProvidersSun> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TabInsuranceNewOffersCubit(),
      child: TabAllServiceProvidersSunList(),
    );
  }
}