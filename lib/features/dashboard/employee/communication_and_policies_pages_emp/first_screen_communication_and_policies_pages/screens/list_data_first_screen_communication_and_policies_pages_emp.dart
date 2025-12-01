import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/first_screen_communication_and_policies_pages/screens/communication_and_policies_pages_screen_emp.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';


class ListDataFirstScreenCommunicationAndPoliciesPagesEmp extends StatefulWidget {
  const ListDataFirstScreenCommunicationAndPoliciesPagesEmp({super.key});

  @override
  State<ListDataFirstScreenCommunicationAndPoliciesPagesEmp> createState() => _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState();
}

class _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState extends State<ListDataFirstScreenCommunicationAndPoliciesPagesEmp> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TabInsuranceNewOffersCubit(),
      child: CommunicationAndPoliciesPagesScreenEmp(),
    );
  }
}
