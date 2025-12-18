import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/admin_sun/companies_admin_sun/all_companies_admin_sun/screens/tab_all_companies_admin_sun_list.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';

class BlocTabAllCompaniesAdminSun extends StatefulWidget {
  const BlocTabAllCompaniesAdminSun({super.key});

  @override
  State<BlocTabAllCompaniesAdminSun> createState() => _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState();
}

class _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState extends State<BlocTabAllCompaniesAdminSun> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TabInsuranceNewOffersCubit(),
      child: TabAllCompaniesAdminSunList(),
    );
  }
}