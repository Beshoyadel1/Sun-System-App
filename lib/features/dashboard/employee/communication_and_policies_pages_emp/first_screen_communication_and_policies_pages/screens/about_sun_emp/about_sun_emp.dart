import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/first_screen_communication_and_policies_pages/screens/about_sun_emp/first_title_in_about_sun_emp.dart';

class AboutSunEmp extends StatelessWidget {
  const AboutSunEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: FirstTitleInAboutSunEmp(),
      ),
    );
  }
}
