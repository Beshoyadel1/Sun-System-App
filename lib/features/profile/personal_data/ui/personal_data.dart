import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/profile/personal_data/ui/screens/list_first_name_text_field_personal_data_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/theming/colors.dart';

class PersonalData extends StatelessWidget {
  const PersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
       appBar: const AppbarProfileWidget(title: AppLanguageKeys.personalData),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Align(
              alignment: AlignmentGeometry.center,
              child: SizedBox(
                width: 500,
                child: ListFirstNameTextFieldPersonalDataWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
