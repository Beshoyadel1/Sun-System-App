import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../features/dashboard/admin_sun/users_admin_sum/custom_widget/container_my_data_car_choose_admin_sum_widget.dart';
import '../../../../../../../features/change_car/my_car_data_car_change/logic/car_selection_data_select_car_cubit.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/assets.dart';

class ListCarsAdminSum extends StatelessWidget {
  const ListCarsAdminSum({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width <= 1200;
    return isMobile
        ? BlocProvider(
          create: (_) => CarSelectionDataSelectCarCubit(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(
              cars.length,
              (i) => Padding(
                padding: EdgeInsets.only(bottom: i == cars.length - 1 ? 0 : 10),
                child: ContainerMyDataCarChooseAdminSumWidget(
                  index: i,
                  imageSrc: cars[i]['image']!,
                  title: cars[i]['title']!,
                  subTitle: cars[i]['sub']!,
                ),
              ),
            ),
          ),
        )
        : BlocProvider(
          create: (_) => CarSelectionDataSelectCarCubit(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              cars.length,
              (i) => Padding(
                padding: EdgeInsets.only(right: i == cars.length - 1 ? 0 : 10),
                child: ContainerMyDataCarChooseAdminSumWidget(
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
  {'title': AppLanguageKeys.myCar, 'image': AppImageKeys.car2, 'sub': 'CR - V'},
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
