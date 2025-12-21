import 'package:flutter/cupertino.dart';
import '../../../../../../../../../features/dashboard/admin_sun/service_providers_sun/custom_widget/container_data_view_account_balance_data_widget.dart';

class ListDataViewContainerAccountBalanceData extends StatelessWidget {
  const ListDataViewContainerAccountBalanceData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        ContainerDataViewAccountBalanceDataWidget(),
        ContainerDataViewAccountBalanceDataWidget(),
        ContainerDataViewAccountBalanceDataWidget(),
        ContainerDataViewAccountBalanceDataWidget(),
      ],
    );
  }
}
