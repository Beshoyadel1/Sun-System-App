import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/pages_widgets/button_widget.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/features/Insurance/your_insurance_information/logic/your_insurance_info_cubit.dart';
import 'package:sun_system_app/features/Insurance/your_insurance_information/ui/screens/data_your_insurance_information.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          SizedBox(height: 50),
          CircularProgressIndicator(),
          SizedBox(height: 10),
          TextInAppWidget(
            text: AppLanguageKeys.pleaseWait,
            textSize: 20,
            fontWeightIndex: FontSelectionData.mediumFontFamily,
            textColor: AppColors.darkColor,
          ),
        ],
      ),
    );
  }
}

