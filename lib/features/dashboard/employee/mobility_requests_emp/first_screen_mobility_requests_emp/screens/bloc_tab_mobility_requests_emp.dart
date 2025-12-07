import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/employee/mobility_requests_emp/first_screen_mobility_requests_emp/screens/tab_mobility_requests_emp.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';


class BlocTabMobilityRequestsEmp extends StatefulWidget {
  const BlocTabMobilityRequestsEmp({super.key});

  @override
  State<BlocTabMobilityRequestsEmp> createState() => _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState();
}

class _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState extends State<BlocTabMobilityRequestsEmp> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TabInsuranceNewOffersCubit(),
      child: TabMobilityRequestsEmp(),
    );
  }
}
