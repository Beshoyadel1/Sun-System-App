import 'package:flutter/cupertino.dart';
import 'package:sun_system_app/features/change_car/add_information_car_change_car/ui/screens/first_part_list_car_in_add_information_car_change_car.dart';
import 'package:sun_system_app/features/change_car/add_information_car_change_car/ui/screens/second_part_list_car_in_add_information_car_change_car.dart';
import 'package:sun_system_app/features/insurance_new/custom_widget/first_name_textfield_identity_verification_new_widget.dart';

class ListCarInAddInformationCarChangeCar extends StatelessWidget {
  const ListCarInAddInformationCarChangeCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        FirstPartListCarInAddInformationCarChangeCar(),
        SecondPartListCarInAddInformationCarChangeCar()
      ],
    );
  }
}
