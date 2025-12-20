import 'package:flutter/cupertino.dart';
import '../../../../../../features/dashboard/admin_sun/service_providers_sun/all_service_providers_sun/screens/bloc_tab_all_service_providers_sun.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../core/theming/assets.dart';

class DataContainerInListAllServiceProvidersSun extends StatelessWidget {
  const DataContainerInListAllServiceProvidersSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 30,
        children: [
          ImageWithTwoText(
            imageSrc: AppImageKeys.company1,
            title: '#655466',
            titleColor: AppColors.greyColor,
            subTitle: 'أسم الشركة',
            subTitleColor: AppColors.blackColor,
          ),
          Expanded(child: BlocTabAllServiceProvidersSun()),
        ],
      ),
    );
  }
}
