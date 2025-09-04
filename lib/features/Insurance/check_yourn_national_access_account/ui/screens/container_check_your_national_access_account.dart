import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../features/Insurance/custom_widget/end_button_screen.dart';
import '../../../../../core/pages_widgets/button_widget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/pages_widgets/text_form_field_widget.dart';

import '../../../../../features/Insurance/check_yourn_national_access_account/logic/container_check_your_national_cubit.dart';
import '../../../../../features/Insurance/check_yourn_national_access_account/ui/screens/container_content.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class ContainerCheckYourNationalAccessAccount extends StatelessWidget {
  const ContainerCheckYourNationalAccessAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContainerCheckYourNationalCubit(),
      child: ContainerContent(),
    );
  }
}
