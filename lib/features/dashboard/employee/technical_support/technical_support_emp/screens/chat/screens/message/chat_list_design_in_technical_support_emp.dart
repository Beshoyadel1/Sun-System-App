import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../../features/dashboard/employee/technical_support/technical_support_emp/screens/chat/screens/message/text_direction_technical_support_emp.dart';



class ChatListDesignInTechnicalSupportEmp extends StatelessWidget {
  const ChatListDesignInTechnicalSupportEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          TextDirectionTechnicalSupportEmp(
            textMessage: 'هلا والله ,وينك',
            isSender: true,
            isSeen: true,
           ),
          TextDirectionTechnicalSupportEmp(
            textMessage: "جاي في الطريق",
          ),
          TextDirectionTechnicalSupportEmp(
            textMessage: "منتظرك ",
              isSender: true,
            isSeen: true,
            ),
          TextDirectionTechnicalSupportEmp(
            textMessage: 'دقيقتين فقط',
          ),
          TextDirectionTechnicalSupportEmp(
            textMessage: "حياك الله",
            isSender: true,
          ),
          TextDirectionTechnicalSupportEmp(
            textMessage: "جاي في الطريق",
          ),
          TextDirectionTechnicalSupportEmp(
            textMessage: "منتظرك ",
            isSender: true,
            isSeen: true,
          ),
          TextDirectionTechnicalSupportEmp(
            textMessage: 'دقيقتين فقط',
          ),
          TextDirectionTechnicalSupportEmp(
            textMessage: "حياك الله",
            isSender: true,
          ),
          TextDirectionTechnicalSupportEmp(
            textMessage: "جاي في الطريق",
          ),
          TextDirectionTechnicalSupportEmp(
            textMessage: "منتظرك ",
            isSender: true,
            isSeen: true,
          ),
          TextDirectionTechnicalSupportEmp(
            textMessage: 'دقيقتين فقط',
          ),
          TextDirectionTechnicalSupportEmp(
            textMessage: "حياك الله",
            isSender: true,
          ),
        ],
      ),
    );
  }
}
