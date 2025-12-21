import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../../features/warranty/custom_widget/row_number_coin_widget.dart';
import '../../../../../../../../../core/theming/assets.dart';
import '../../../../../../../../../features/change_car/custom_widget/image_with_two_text.dart';
import '../../../../../../../../../core/theming/colors.dart';

class ContainerDataViewAccountBalanceDataWidget extends StatelessWidget {
  const ContainerDataViewAccountBalanceDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: AppColors.greyColor.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkColor.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageWithTwoText(
            imageSrc: AppImageKeys.service33,
            widthImage: 30,
            title: 'الصيانة والاصلاح',
            textSizeTitle: 12,
            titleColor: AppColors.orangeColor,
            subTitle: ' ايراد من طلب 10054',
            subTitleColor: AppColors.blackColor,
            textSizeSubTitle: 12,
          ),
          RowNumberCoinWidget(
            numberText: '250',
            sizeText: 15,
            imageSrc: AppImageKeys.coin,
            textColor: AppColors.cyanColor,
            imageColor: AppColors.cyanColor,
          ),
        ],
      ),
    );
  }
}
