import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/last_button_with_background_.dart';
import 'package:sun_system_app/features/request_service/bill_payment_in_service_request/ui/screens/list_data_your_bill_payment_in_service_request.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';

class BillPaymentInServiceRequest  extends StatelessWidget {
  const BillPaymentInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title:AppLanguageKeys.requestNumber,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentGeometry.topCenter,
            child: SizedBox(
              width: 500,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                        child: ListDataYourBillPaymentInServiceRequest()
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: LastButtonWithBackGround(),
    );
  }
}
