import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ComprehensiveInsuranceState {}

class ComprehensiveInsuranceInitialState extends ComprehensiveInsuranceState {}

class ComprehensiveInsuranceChangedState extends ComprehensiveInsuranceState {
  final int index;
  ComprehensiveInsuranceChangedState(this.index);
}

