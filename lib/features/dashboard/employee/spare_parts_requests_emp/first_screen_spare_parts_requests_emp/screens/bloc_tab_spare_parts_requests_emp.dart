import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/employee/spare_parts_requests_emp/first_screen_spare_parts_requests_emp/screens/tab_spare_parts_requests_emp.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';


class BlocTabSparePartsRequestsEmp extends StatefulWidget {
  const BlocTabSparePartsRequestsEmp({super.key});

  @override
  State<BlocTabSparePartsRequestsEmp> createState() => _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState();
}

class _ScreenListDataFirstScreenCommunicationAndPoliciesPagesState extends State<BlocTabSparePartsRequestsEmp> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TabInsuranceNewOffersCubit(),
      child: TabSparePartsRequestsEmp(),
    );
  }
}
