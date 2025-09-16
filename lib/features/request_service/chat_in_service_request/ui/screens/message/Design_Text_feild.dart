import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/pages_widgets/text_form_field_widget.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/features/request_service/chat_in_service_request/ui/screens/message/Design_Text_feild.dart';
import 'package:sun_system_app/features/request_service/chat_in_service_request/ui/screens/message/TextDirction.dart';
import 'package:sun_system_app/features/request_service/chat_in_service_request/ui/screens/message/chat_list_design.dart';



class DesignTextField extends StatefulWidget {
  const DesignTextField({super.key});

  @override
  State<DesignTextField> createState() => _DesignTextFieldState();
}

class _DesignTextFieldState extends State<DesignTextField> {
  late TextEditingController textFormFieldWidget;
  @override
  void initState() {
    textFormFieldWidget = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsetsGeometry.all(20),
      width: 500,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextFormFieldWidget(
        textFormController: textFormFieldWidget,
        fillColor: AppColors.whiteColor,
        borderColor: AppColors.whiteColor,
        hintText:'أكتب هنا',
        hintTextColor: AppColors.darkColor,
        contentPadding: EdgeInsetsGeometry.all(10),
        hintTextSize: 10,
        textSize: 15,
        textFormWidth: 500,
        enabledBorderRadius:BorderRadius.circular(10),
        focusedBorderRadius: BorderRadius.circular(10),
        prefixIcon: AppImageKeys.send,
        suffixIcon: CupertinoIcons.smiley,
      ),
    );
  }
}
