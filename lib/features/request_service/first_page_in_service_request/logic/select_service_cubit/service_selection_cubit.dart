import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/request_service/first_page_in_service_request/logic/select_service_cubit/service_selection_state.dart';

class ServiceSelectionCubit extends Cubit<ServiceSelectionState> {
  ServiceSelectionCubit() : super(ServiceInitial());

  void selectService(int index) => emit(ServiceSelected(index));
  void clearSelection() => emit(ServiceInitial());
}
