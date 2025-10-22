import 'package:flutter/cupertino.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../features/dashboard/service_settings/custom_widget/container_shared_package_design_widget.dart';

class ListDataOfPackagesInSharedPackagesInServiceSettings extends StatelessWidget {
  const ListDataOfPackagesInSharedPackagesInServiceSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        ContainerSharedPackageDesignWidget(
          textPackage:AppLanguageKeys.specialPackage,
          price:'400.00',
        ),
        ContainerSharedPackageDesignWidget(
          textPackage:AppLanguageKeys.goldPackage ,
          price:'500,00',
        )
      ],
    );
  }
}
