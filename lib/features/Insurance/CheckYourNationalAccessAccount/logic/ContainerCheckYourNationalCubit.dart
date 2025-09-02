
import 'package:bloc/bloc.dart';

enum ButtonState { initial, replaced, navigated }

class ContainerCheckYourNationalCubit extends Cubit<ButtonState> {
  ContainerCheckYourNationalCubit() : super(ButtonState.initial);

  void onButtonPressed() {
    if (state == ButtonState.initial) {
      emit(ButtonState.replaced); // first click
    } else if (state == ButtonState.replaced) {
      emit(ButtonState.navigated); // second click
    }
  }
}
