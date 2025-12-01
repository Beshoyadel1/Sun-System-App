import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/first_screen_communication_and_policies_pages/screens/terms_and_conditions_emp/first_title_in_terms_and_conditions_emp.dart';

class TermsAndConditionsEmp extends StatelessWidget {
  const TermsAndConditionsEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: FirstTitleInTermsAndConditionsEmp(),
      ),
    );
  }
}
