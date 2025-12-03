import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/data_user_enter.dart';
import '../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/title_with_sub_title.dart';
import '../../../../../../features/dashboard/employee/login_emp/login_emp/screens/data_login/container_logo_sun.dart';


class DataContainerInListDataLoginEmp extends StatelessWidget {
  const DataContainerInListDataLoginEmp({super.key});
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
          ContainerLogoSun(),
          TitleWithSubTitle(),
          DataUserEnter(),
        ],
      ),
    );
  }
}
