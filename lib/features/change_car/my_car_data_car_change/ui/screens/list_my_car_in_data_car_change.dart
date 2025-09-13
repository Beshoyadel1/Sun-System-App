import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/features/change_car/custom_widget/Container_my_data_car_choose_widget.dart';
import 'package:sun_system_app/features/change_car/my_car_data_car_change/logic/car_selection_data_select_car_cubit.dart';
import '../../../../../features/change_car/my_car_data_car_change/ui/screens/list_my_car_in_data_car_change.dart';
import '../../../../../features/profile/custom_widget/appbar_profile_widget.dart';
import '../../../../../core/pages_widgets/general_widgets/navigate_to_page_widget.dart';
import '../../../../../features/warranty/warranty_subscription/ui/warranty_subscription.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/colors.dart';


class ListMyCarInDataCarChange extends StatelessWidget {
  const ListMyCarInDataCarChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (_) => CarSelectionDataSelectCarCubit(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(
          cars.length,
              (i) => Padding(
            padding: EdgeInsets.only(bottom: i == cars.length - 1 ? 0 : 10),
            child: ContainerMyDataCarChooseWidget(
              index: i,
              imageSrc: cars[i]['image']!,
              title: cars[i]['title']!,
              subTitle: cars[i]['sub']!,
            ),
          ),
        ),
      ),
    );
  }
}
final cars = [
  {
    'title': AppLanguageKeys.myCar,
    'image': AppImageKeys.car2,
    'sub': 'CR - V',
  },
  {
    'title': AppLanguageKeys.wifeCar,
    'image': AppImageKeys.car3,
    'sub': 'Nissan GTR',
  },
  {
    'title': AppLanguageKeys.mySecondCar,
    'image': AppImageKeys.car4,
    'sub': 'Jeep ',
  },
];
