import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/request_service/calling_in_service_request/ui/screens/container_call_in_data_calling_design.dart';
import 'package:sun_system_app/features/request_service/calling_in_service_request/ui/screens/data_calling_design.dart';
import 'package:sun_system_app/features/request_service/calling_in_service_request/ui/screens/row_mute_sound_data_calling_design.dart';


class DataCallingDesign extends StatelessWidget {
  const DataCallingDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerCallInDataCallingDesign(),
        RowMuteSoundDataCallingDesign()
      ],
    );
  }
}
