import 'package:flutter/material.dart';
import '../../../../../../features/dashboard/communication_and_policies_pages/first_screen_communication_and_policies_pages/screens/terms_and_conditions/first_title_in_terms_and_conditions.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: FirstTitleInTermsAndConditions(),
      ),
    );
  }
}
