import 'package:flutter/cupertino.dart';
import '../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';

class PriceOfSpareParts extends StatelessWidget {
  const PriceOfSpareParts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RowNumberCoinWidget(
            numberText: '450.00',
            sizeText: 16,
            imageSrc: AppImageKeys.coin
        ),
      ],
    );
  }
}
