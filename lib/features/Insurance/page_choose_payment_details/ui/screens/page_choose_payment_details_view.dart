import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import 'package:sun_system_app/features/Insurance/custom_widget/app_snack_bar.dart';
import 'package:sun_system_app/features/Insurance/custom_widget/last_button_container_page_choose_payment_details_widget.dart';
import 'package:sun_system_app/features/Insurance/finish_third_payment_details/ui/finish_third_payment_details.dart';
import 'package:sun_system_app/features/Insurance/page_choose_payment_details/logic/radio_payment_state.dart';
import '../../../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';
import '../../../../../features/Insurance/page_choose_payment_details/ui/screens/last_button_container_page_choose_payment_details.dart';
import '../../../../../features/Insurance/page_choose_payment_details/ui/screens/container_list_visa.dart';
import '../../../../../features/Insurance/page_choose_payment_details/ui/screens/container_invoice.dart';
import '../../../../../features/Insurance/page_choose_payment_details/ui/screens/container_installment_payment.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/custom_widget/appbar_insurance_offers.dart';

class PageChoosePaymentDetailsView extends StatefulWidget {
  const PageChoosePaymentDetailsView({super.key});

  @override
  State<PageChoosePaymentDetailsView> createState() => _PageChoosePaymentDetailsViewState();
}

class _PageChoosePaymentDetailsViewState extends State<PageChoosePaymentDetailsView> {
  late RadioPaymentCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<RadioPaymentCubit>();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
