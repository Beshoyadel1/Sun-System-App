import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/features/request_service/chat_in_service_request/ui/screens/message/TextDirction.dart';
import 'package:sun_system_app/features/request_service/chat_in_service_request/ui/screens/message/chat_list_design.dart';



class ChatListDesign extends StatelessWidget {
  const ChatListDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          TextDirection(
            textMessage: 'هلا والله ,وينك',
            isSender: true,
            isSeen: true,
           ),
          TextDirection(
            textMessage: "جاي في الطريق",
          ),
          TextDirection(
            textMessage: "منتظرك ",
              isSender: true,
            isSeen: true,
            ),
          TextDirection(
            textMessage: 'دقيقتين فقط',
          ),
          TextDirection(
            textMessage: "حياك الله",
            isSender: true,
          ),
        ],
      ),
    );
  }
}
