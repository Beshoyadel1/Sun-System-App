import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/language/language_constant.dart';


class OffersPresentedInServiceRequest extends StatelessWidget {
  const OffersPresentedInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title:'سيارة CR  - V',),
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
                       /* child: ListCarInAddInformationCarChangeCar()*/
                    ),
                  ),
                //  EndTwoButtonScreen()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
