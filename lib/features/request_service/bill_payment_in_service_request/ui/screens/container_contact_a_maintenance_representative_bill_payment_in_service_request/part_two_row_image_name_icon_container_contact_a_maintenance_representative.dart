import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/calling_in_service_request/ui/calling_in_service_request.dart';
import 'package:sun_system_app/features/request_service/chat_in_service_request/ui/chat_in_service_request.dart';
import 'package:sun_system_app/features/request_service/custom_widget/Container_icon_widget.dart';

class PartTwoRowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest extends StatelessWidget {
  const PartTwoRowImageNameIconContainerContactAMaintenanceRepresentativeBillPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        ContainerIconWidget(
          imagPath: AppImageKeys.call,
          onTap: (){
            Navigator.of(context).push(
              NavigateToPageWidget(
                  CallingInServiceRequest()
              ),
            );
          },
        ),
        ContainerIconWidget(
          imagPath: AppImageKeys.message,
          onTap: (){
            Navigator.of(context).push(
              NavigateToPageWidget(
                  ChatInServiceRequest()
              ),
            );
          },
        ),
      ],
    );
  }
}
