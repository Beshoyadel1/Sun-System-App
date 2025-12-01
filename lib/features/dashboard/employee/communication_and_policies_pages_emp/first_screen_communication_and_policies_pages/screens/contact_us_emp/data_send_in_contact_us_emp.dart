import 'package:flutter/cupertino.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../features/profile/custom_widget/first_name_textfield_personal_data_widget.dart';

class DataSendInContactUsEmp extends StatefulWidget {
  const DataSendInContactUsEmp({super.key});

  @override
  State<DataSendInContactUsEmp> createState() => _DataSendInContactUsEmpState();
}

class _DataSendInContactUsEmpState extends State<DataSendInContactUsEmp> {
  late TextEditingController textFormControllerName, textFormControllerPhoneNumber, textFormControllerEmail,textFormControllerMessage;
  @override
  void initState() {
    super.initState();
    textFormControllerName = TextEditingController();
    textFormControllerPhoneNumber = TextEditingController();
    textFormControllerEmail = TextEditingController();
    textFormControllerMessage = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.name,
          isRegular: true,
          textFormController: textFormControllerName,
          textFormWidth: 500,
          textFormHeight: 40,
        ),
        FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.phoneNumber,
          isRegular: true,
          textFormController: textFormControllerPhoneNumber,
          textFormWidth: 500,
          textFormHeight: 40,
        ),
        FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.email,
          isRegular: true,
          textFormController: textFormControllerEmail,
          textFormWidth: 500,
          textFormHeight: 40,
        ),
        FirstNameTextfieldPersonalDataWidget(
          name: AppLanguageKeys.messageText,
          isRegular: true,
          maxLines: 5,
          textFormController: textFormControllerMessage,
          textFormWidth: 500,
        ),
      ],
    );
  }
}
