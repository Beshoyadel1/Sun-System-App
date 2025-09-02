import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/features/Insurance/YourInsuranceInformation/logic/InsuranceInfoState.dart';

class InsuranceInfoCubit extends Cubit<InsuranceInfoState> {
  InsuranceInfoCubit() : super(InsuranceInfoInitial());

  void linkInsurance() async {
    emit(InsuranceInfoLoading());

    await Future.delayed(const Duration(seconds: 2));

    emit(InsuranceInfoSuccess());
  }
}
