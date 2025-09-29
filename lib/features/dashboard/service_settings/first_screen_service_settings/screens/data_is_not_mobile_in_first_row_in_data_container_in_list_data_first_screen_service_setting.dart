import 'package:flutter/cupertino.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/dashboard/service_settings/first_screen_service_settings/first_screen_service_settings.dart';
import '../../../../../features/dashboard/service_settings/first_screen_service_settings/screens/container_return_to_page_setting.dart';
import '../../../../../features/dashboard/service_settings/first_screen_service_settings/screens/column_two_text_in_first_row_in_data_container_in_list_data_first_screen_service_setting.dart';
import '../../../../../features/dashboard/service_settings/first_screen_service_settings/screens/Container_image_in_first_row_in_data_container_in_list_data_first_screen_service_setting.dart';

class DataIsNotMobileInFirstRowInDataContainerInListDataFirstScreenServiceSetting extends StatelessWidget {
  const DataIsNotMobileInFirstRowInDataContainerInListDataFirstScreenServiceSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Row(
            spacing: 10,
            children: [
              ContainerImageInFirstRowInDataContainerInListDataFirstScreenServiceSetting(),
              ColumnTwoTextInFirstRowInDataContainerInListDataFirstScreenServiceSetting()
            ],
          ),
        ),
        ContainerReturnToPageSetting(
          onTap: (){
            NavigateToPageWidget.navigate(
              context,
              const FirstScreenServiceSettings(),
              type: NavigateType.clearAll,
            );
          },
        )
      ],
    );
  }
}
