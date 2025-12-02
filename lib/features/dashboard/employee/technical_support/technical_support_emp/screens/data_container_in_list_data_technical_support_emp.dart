import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/employee/technical_support/technical_support_emp/screens/message/search_with_list_data_chat.dart';
import '../../../../../../features/dashboard/employee/technical_support/technical_support_emp/screens/message/title_message_with_number.dart';


class DataContainerInListDataTechnicalSupportEmp extends StatelessWidget {
  const DataContainerInListDataTechnicalSupportEmp({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 940;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleMessageWithNumber(),
          SearchWithListDataChat()
        ],
      ),
    );
  }
}
