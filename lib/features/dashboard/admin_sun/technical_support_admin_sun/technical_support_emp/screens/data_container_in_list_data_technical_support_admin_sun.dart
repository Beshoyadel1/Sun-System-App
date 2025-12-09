import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/technical_support_admin_sun/technical_support_emp/screens/message/search_with_list_data_chat_admin_sun.dart';
import '../../../../../../features/dashboard/admin_sun/technical_support_admin_sun/technical_support_emp/screens/message/title_message_with_number_admin_sun.dart';

class DataContainerInListDataTechnicalSupportAdminSun extends StatelessWidget {
  const DataContainerInListDataTechnicalSupportAdminSun({super.key});
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
          TitleMessageWithNumberAdminSun(),
          SearchWithListDataChatAdminSun()
        ],
      ),
    );
  }
}
