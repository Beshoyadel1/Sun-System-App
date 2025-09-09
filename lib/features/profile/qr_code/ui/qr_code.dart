import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/pages_widgets/button_widget.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';

class QrCode extends StatelessWidget {
  const QrCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: AppbarProfileWidget(title: AppLanguageKeys.qrCode,),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentGeometry.center,
            child: SizedBox(
              width: 500,
              child: Column(
                spacing: 100,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImageKeys.qr_scan,width: 230,),
                  ButtonWidget(
                    text: AppLanguageKeys.scanQrCode,
                    textColor: AppColors.whiteColor,
                    buttonColor: AppColors.darkBlueColor,
                    textSize: 12,
                    fontWeightIndex: FontSelectionData.regularFontFamily,
                    heightContainer: 50,
                    widthContainer:230,
                    borderRadius: 30,
                    onTap: (){},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
