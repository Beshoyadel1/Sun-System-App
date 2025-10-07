import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/fonts.dart';
import '../../../../../../../core/theming/text_styles.dart';
import '../../../../../../../features/dashboard/internal_orders/first_screen_internal_orders/logic/loading_dashboard_cubit.dart';
import '../../../../../../../features/dashboard/internal_orders/first_screen_internal_orders/logic/loading_dashboard_state.dart';
import '../../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';

class FirstRowInDataInContainerInteriorServicesStatistics extends StatelessWidget {
  const FirstRowInDataInContainerInteriorServicesStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextInAppWidget(
            text:AppLanguageKeys.internalServicesProfit,
            textSize: 15,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor:AppColors.blackColor,
          ),
        ),
        BlocBuilder<InternalOrdersCubit, InternalOrdersState>(
            buildWhen: (previous, current) => previous.isLoading != current.isLoading,
            builder: (context, state) {
           return RowNumberCoinWidget(
               numberText:state.isLoaded? '450':'0',
               sizeText: 15,
               imageSrc: AppImageKeys.coin
           );
         }
       ),
      ],
    );
  }
}
