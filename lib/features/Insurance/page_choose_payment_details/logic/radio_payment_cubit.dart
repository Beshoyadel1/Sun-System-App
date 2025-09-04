
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/features/Insurance/page_choose_payment_details/logic/radio_payment_state.dart';

class RadioPaymentCubit extends Cubit<RadioPaymentState> {
  RadioPaymentCubit() : super(RadioPaymentState());

  void selectOption(int index, String imagePath) {
    emit(RadioPaymentState(selectedIndex: index, selectedImage: imagePath));
  }
}