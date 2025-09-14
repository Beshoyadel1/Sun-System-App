import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SelectTimeServiceSelectionState {}

class SelectTimeServiceInitial extends SelectTimeServiceSelectionState {}

class SelectTimeServiceSelected extends SelectTimeServiceSelectionState {
  final int index;
  SelectTimeServiceSelected(this.index);
}

