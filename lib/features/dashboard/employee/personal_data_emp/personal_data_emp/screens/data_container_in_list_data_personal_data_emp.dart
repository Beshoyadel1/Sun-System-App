import 'package:flutter/cupertino.dart';
import 'permissions_user/select_permissions_and_services_provided_to_the_user_with_image_in_personal_data_emp.dart';
import '../../../../../../features/dashboard/employee/personal_data_emp/personal_data_emp/screens/data_name_with_text_field_personal_data_emp.dart';


class DataContainerInListDataPersonalDataEmp extends StatelessWidget {
  const DataContainerInListDataPersonalDataEmp({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 940;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        spacing: 30,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DataNameWithTextFieldPersonalDataEmp(),

          if ((isMobile))
          SelectPermissionsAndServicesProvidedToTheUserWithImageInPersonalDataEmp()
        ],
      ),
    );
  }
}
