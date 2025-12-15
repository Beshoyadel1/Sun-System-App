import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../features/dashboard/Admin/service_settings/custom_widget/button_edit_delete_setting_widget.dart';


class ContainerEditDeleteCarDetailsAdminSun extends StatelessWidget {
  final void Function()? onTapEdit,onTapDelete;
  const ContainerEditDeleteCarDetailsAdminSun({super.key,
    this.onTapEdit,
    this.onTapDelete,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1400;
    return isMobile?
    Column(
      spacing: 20,
      children: [
        ButtonEditDeleteSettingWidget(),
        ButtonEditDeleteSettingWidget(isDelete: true,)
      ],
    )

        :
    Row(
    spacing: 20,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Flexible(child: ButtonEditDeleteSettingWidget()),
    Flexible(child: ButtonEditDeleteSettingWidget(isDelete: true,))
    ],
    );
  }
}
