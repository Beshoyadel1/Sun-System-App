import 'package:flutter_bloc/flutter_bloc.dart';

class ComprehensiveInsuranceCubit extends Cubit<int?> {
  ComprehensiveInsuranceCubit() : super(0);

  void selectCompany(int index) => emit(index);
}
