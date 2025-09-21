import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';

class ListDataFirstScreenBookingCarBatteries extends StatelessWidget {
  const ListDataFirstScreenBookingCarBatteries({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsetsGeometry.all(5),
          decoration: BoxDecoration(
          color: AppColors.whiteColor,
           borderRadius: BorderRadius.all(Radius.circular(20)),
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
        child:Column(
          children: [
            Stack(
              children: [
                Image.asset(AppImageKeys.service_test,fit: BoxFit.cover,),
                Column(
                  spacing: 20,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsetsGeometry.all(10)
                          ,decoration: BoxDecoration(
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
            ),
          ],
        )
        ),
      ],
    );
  }
}
