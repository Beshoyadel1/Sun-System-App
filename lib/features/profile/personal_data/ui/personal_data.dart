import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/language/language_cubit/language_cubit.dart';
import 'package:sun_system_app/features/profile/custom_widget/appbar_profile_widget.dart';
import 'package:sun_system_app/features/profile/custom_widget/first_name_textfield_personal_data_widget.dart';
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
                child: Column(
                  spacing: 25,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FirstNameTextfieldPersonalDataWidget(
                      name: AppLanguageKeys.username,
                      hint:'عمرو محي الدين',
                    ),
                    const FirstNameTextfieldPersonalDataWidget(
                      name: AppLanguageKeys.email,
                      hint:'amr@gmail,com',
                    ),
                    const FirstNameTextfieldPersonalDataWidget(
                      name: AppLanguageKeys.password,
                      hint:'***',
                    ),
                    const FirstNameTextfieldPersonalDataWidget(
                      name: AppLanguageKeys.nationality,
                      hint:'مصري',
                    ),
                   const FirstNameTextfieldPersonalDataWidget(
                      isLanguage: true,
                       name:AppLanguageKeys.language,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
