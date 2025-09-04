import 'package:flutter_bloc/flutter_bloc.dart';

abstract class InsuranceInfoState {}

class InsuranceInfoInitial extends InsuranceInfoState {}

class InsuranceInfoLoading extends InsuranceInfoState {}

class InsuranceInfoSuccess extends InsuranceInfoState {}

class InsuranceInfoFailure extends InsuranceInfoState {
  final String message;
  InsuranceInfoFailure(this.message);
}
