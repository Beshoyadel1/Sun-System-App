
import 'package:flutter_bloc/flutter_bloc.dart';

class TabInsuranceOffersCubit extends Cubit<int> {
  TabInsuranceOffersCubit() : super(0);

  void changeTab(int index) => emit(index);
}
