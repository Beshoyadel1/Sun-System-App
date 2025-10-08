import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/communication_and_policies_pages/first_screen_communication_and_policies_pages/screens/privacy_policy/first_title_in_privacy_policy.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: FirstTitleInPrivacyPolicy(),
      ),
    );
  }
}
