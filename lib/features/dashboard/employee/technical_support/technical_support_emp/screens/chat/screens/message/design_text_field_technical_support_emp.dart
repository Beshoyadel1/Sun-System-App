import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../../core/language/language_constant.dart';
import '../../../../../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../../../../../core/theming/colors.dart';

class DesignTextFieldTechnicalSupportEmp extends StatefulWidget {
  const DesignTextFieldTechnicalSupportEmp({super.key});

  @override
  State<DesignTextFieldTechnicalSupportEmp> createState() => _DesignTextFieldTechnicalSupportEmpState();
}

class _DesignTextFieldTechnicalSupportEmpState extends State<DesignTextFieldTechnicalSupportEmp> {
  late TextEditingController textFormFieldWidget;
  @override
  void initState() {
    textFormFieldWidget = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.all(20),
      width: 500,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextFormFieldWidget(
        textFormController: textFormFieldWidget,
        fillColor: AppColors.whiteColor,
        borderColor: AppColors.greyColor.withOpacity(0.5),
        hintText:AppLanguageKeys.writeYourMessageHere,
        hintTextColor: AppColors.darkColor,
        contentPadding: EdgeInsetsGeometry.all(10),
        hintTextSize: 10,
        textSize: 15,
        textFormWidth: 500,
        enabledBorderRadius:BorderRadius.circular(10),
        focusedBorderRadius: BorderRadius.circular(10),
        suffixIcon: Icons.send,
      ),
    );
  }
}
