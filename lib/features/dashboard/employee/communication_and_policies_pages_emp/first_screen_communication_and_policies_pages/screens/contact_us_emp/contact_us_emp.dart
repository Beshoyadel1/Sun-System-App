import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/first_screen_communication_and_policies_pages/screens/contact_us_emp/data_send_in_contact_us_emp.dart';
import '../../../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/first_screen_communication_and_policies_pages/screens/contact_us_emp/first_title_in_contact_us_emp.dart';
import '../../../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/first_screen_communication_and_policies_pages/screens/contact_us_emp/last_button_in_contact_us_emp.dart';


class ContactUsEmp extends StatelessWidget {
  const ContactUsEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 10),
            FirstTitleInContactUsEmp(),
            DataSendInContactUsEmp(),
            LastButtonInContactUsEmp()
          ],
        ),
      ),
    );
  }
}
