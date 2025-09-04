import 'package:bloc/bloc.dart';

enum ButtonState { initial, replaced, navigated }

class ContainerCheckYourNationalCubit extends Cubit<ButtonState> {
  ContainerCheckYourNationalCubit() : super(ButtonState.initial);

  void onButtonPressed() {
    switch (state) {
      case ButtonState.initial:
        emit(ButtonState.replaced);
        break;
      case ButtonState.replaced:
        emit(ButtonState.navigated);
        break;
      case ButtonState.navigated:
        break;
    }
  }

  void reset() {
    emit(ButtonState.initial);
  }
}
