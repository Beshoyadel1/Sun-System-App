import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';

class StackDataInFirstContainerInListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const StackDataInFirstContainerInListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImageKeys.service_test,fit: BoxFit.cover,),
        Column(
          spacing: 15,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsetsGeometry.all(10),
                  decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(
                      color: AppColors.transparent
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.darkColor.withOpacity(0.1),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                  child: IconButton(
                      onPressed: (){
                      },
                      icon: Icon(Icons.favorite,color: AppColors.greyColor,size: 20,)),
                ),
              ],
            ),
            Row(
              spacing: 5,
              children: [
                Image.asset(AppImageKeys.shield,width: 30,),
                TextInAppWidget(
                  text:'أسم مركز الصيانة',
                  textSize: 15,
                  fontWeightIndex: FontSelectionData.mediumFontFamily,
                  textColor:AppColors.whiteColor,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
