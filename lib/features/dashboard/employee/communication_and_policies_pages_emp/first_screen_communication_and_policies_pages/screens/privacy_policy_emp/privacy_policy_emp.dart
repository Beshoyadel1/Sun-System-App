import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/first_screen_communication_and_policies_pages/screens/privacy_policy_emp/first_title_in_privacy_policy_emp.dart';

class PrivacyPolicyEmp extends StatelessWidget {
  const PrivacyPolicyEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: FirstTitleInPrivacyPolicyEmp(),
      ),
    );
  }
}
