import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../../features/dashboard/admin_sun/technical_support_admin_sun/technical_support_emp/screens/chat/screens/message/text_direction_technical_support_admin_sun.dart';

class ChatListDesignInTechnicalSupportAdminSun extends StatelessWidget {
  const ChatListDesignInTechnicalSupportAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          TextDirectionTechnicalSupportAdminSun(
            textMessage: 'هلا والله ,وينك',
            isSender: true,
            isSeen: true,
           ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: "جاي في الطريق",
          ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: "منتظرك ",
              isSender: true,
            isSeen: true,
            ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: 'دقيقتين فقط',
          ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: "حياك الله",
            isSender: true,
          ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: "جاي في الطريق",
          ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: "منتظرك ",
            isSender: true,
            isSeen: true,
          ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: 'دقيقتين فقط',
          ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: "حياك الله",
            isSender: true,
          ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: "جاي في الطريق",
          ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: "منتظرك ",
            isSender: true,
            isSeen: true,
          ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: 'دقيقتين فقط',
          ),
          TextDirectionTechnicalSupportAdminSun(
            textMessage: "حياك الله",
            isSender: true,
          ),
        ],
      ),
    );
  }
}
