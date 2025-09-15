import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/request_service/first_page_in_service_request/logic/select_service_cubit/service_selection_state.dart';


class ServiceSelectionCubit extends Cubit<ServiceSelectionState> {
  ServiceSelectionCubit() : super(ServiceInitial());

  ServiceSelected? selectedServiceCopy;

  void selectService(int index, String imgPathSelect, String text) {
    final service = ServiceSelected(
      index: index,
      imgPathSelect: imgPathSelect,
      text: text,
    );

    selectedServiceCopy = service;
    emit(service);
  }

  ServiceSelected? getSelectedService() {
    return selectedServiceCopy;
  }
}


