import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/rates_admin_sun/rates_admin_sun.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/first_screen_rates_admin_sun/screens/all_rates_list/container_data_all_rates_list.dart';
import '../../../../../../../features/dashboard/admin_sun/rates_admin_sun/first_screen_rates_admin_sun/screens/all_rates_list/row_search_model_with_filer_in_all_rates_list.dart';
import '../../../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';

class AllRatesList extends StatelessWidget {
  const AllRatesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RowSearchModelWithFilerInAllRatesList(),
          ContainerDataAllRatesList(
            onTap: (){

              Navigator.of(context).push(
                NavigateToPageWidget(RatesAdminSun()),
              );
            }
          ),
          ContainerDataAllRatesList(
              onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(RatesAdminSun()),
              );
            }
          ),
          ContainerDataAllRatesList(
              onTap: (){
              //
              // Navigator.of(context).push(
              //   NavigateToPageWidget(OrderDetailsMobilityRequestsEmp()),
              // );
            }
          ),
          ContainerDataAllRatesList(
              onTap: (){

              Navigator.of(context).push(
                NavigateToPageWidget(RatesAdminSun()),
              );
            }
          ),
          ContainerDataAllRatesList(
              onTap: (){
              Navigator.of(context).push(
                NavigateToPageWidget(RatesAdminSun()),
              );
            }
          ),
        ],
      ),
    );
  }
}