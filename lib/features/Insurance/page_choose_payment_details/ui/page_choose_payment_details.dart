import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';
import '../../../../features/Insurance/page_choose_payment_details/ui/screens/last_button_container_page_choose_payment_details.dart';
import '../../../../features/Insurance/page_choose_payment_details/ui/screens/container_list_visa.dart';
import '../../../../features/Insurance/page_choose_payment_details/ui/screens/container_invoice.dart';
import '../../../../features/Insurance/page_choose_payment_details/ui/screens/container_installment_payment.dart';
import '../../../../core/theming/colors.dart';
import '../../../../features/Insurance/custom_widget/appbar_insurance_offers.dart';

class PageChoosePaymentDetails extends StatelessWidget {
  const PageChoosePaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RadioPaymentCubit(),
      child: Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        appBar: AppBarInsuranceOffers(),
        body: SafeArea(
          child: Align(
            alignment: AlignmentGeometry.center,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: const [
                        ContainerInstallmentPayment(),
                        SizedBox(height: 40),
                        ContainerInvoice(),
                        SizedBox(height: 40),
                        ContainerListVisa(),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                LastButtonContainerPageChoosePaymentDetails()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
