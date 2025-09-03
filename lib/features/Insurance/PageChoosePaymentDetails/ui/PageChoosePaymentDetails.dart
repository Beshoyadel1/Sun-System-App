import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../features/Insurance/PageChoosePaymentDetails/logic/RadioPaymentCubit.dart';
import '../../../../core/pages_widgets/button_widget.dart';
import '../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../features/Insurance/PageChoosePaymentDetails/ui/screens/LastButtonContainerPageChoosePaymentDetails.dart';
import '../../../../features/Insurance/PageChoosePaymentDetails/ui/screens/ContainerListVisa.dart';
import '../../../../features/Insurance/PageChoosePaymentDetails/ui/screens/ContainerInvoice.dart';
import '../../../../features/Insurance/PageChoosePaymentDetails/ui/screens/ContainerInstallmentPayment.dart';
import '../../../../core/language/language_constant.dart';
import '../../../../core/theming/assets.dart';
import '../../../../core/theming/fonts.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/theming/colors.dart';
import '../../../../features/Insurance/CustomWidget/AppBarInsuranceOffers.dart';

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
              LastButtonContainerPageChoosePaymentDetails()            ],
          ),
        ),
      ),
    );
  }
}
