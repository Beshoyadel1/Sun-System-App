import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ServiceSelectionState {}

class ServiceInitial extends ServiceSelectionState {}

class ServiceSelected extends ServiceSelectionState {
  final int index;
  ServiceSelected(this.index);
}

