import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/employee/requests_for_internal_services_emp/first_screen_requests_for_internal_services_emp/screens/tab_requests_for_internal_services_emp.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';


class BlocTabRequestsForInternalServicesEmp extends StatefulWidget {
  const BlocTabRequestsForInternalServicesEmp({super.key});

  @override
  State<BlocTabRequestsForInternalServicesEmp> createState() => _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState();
}

class _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState extends State<BlocTabRequestsForInternalServicesEmp> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TabInsuranceNewOffersCubit(),
      child: TabRequestsForInternalServicesEmp(),
    );
  }
}
