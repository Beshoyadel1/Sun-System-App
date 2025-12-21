import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/custom_widget/container_data_view_container_number_request_emp_data_widget.dart';

class ListDataViewContainerNumberRequestEmpData extends StatelessWidget {
  const ListDataViewContainerNumberRequestEmpData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        ContainerDataViewContainerNumberRequestEmpDataWidget(),
        ContainerDataViewContainerNumberRequestEmpDataWidget(),
      ],
    );
  }
}
