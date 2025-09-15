import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/features/request_service/first_page_in_service_request/logic/select_service_cubit/service_selection_cubit.dart';
import 'package:sun_system_app/features/request_service/offers_presented_in_service_request/ui/screens/list_data_offers_presented_in_service_request.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';


class OffersPresentedInServiceRequest extends StatelessWidget {
  final ServiceSelectionCubit serviceCubit;

  const OffersPresentedInServiceRequest({super.key,required this.serviceCubit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title:AppLanguageKeys.requestService,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                   child: ListDataOffersPresentedInServiceRequest(
                     serviceCubit: serviceCubit,
                   )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
