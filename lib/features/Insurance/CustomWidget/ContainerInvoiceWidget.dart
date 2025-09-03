import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sun_system_app/features/Insurance/PageChoosePaymentDetails/logic/RadioPaymentCubit.dart';
import '../../../../../features/Insurance/CustomWidget/ContainerInstallmentPaymentWidget.dart';
import '../../../../../core/language/language_constant.dart';
import '../../../../../core/theming/assets.dart';
import '../../../../../core/theming/fonts.dart';
import '../../../../../core/theming/text_styles.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../features/Insurance/CustomWidget/AppBarInsuranceOffers.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/ContainerAnnualPayment.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/FirstRowInsuranceOffers.dart';
import '../../../../../features/Insurance/DetailsAnnualPayments/ui/screens/RowImageLabelButtonMoneyDetailsAnnualPayments.dart';

class ContainerInvoiceWidget extends StatelessWidget {
  final bool? isFinished;
  final String priceInsuranceInstallment,priceTaxes,priceTotal;
  final String? textTimeFinishPay;
  final String? selectedImage;

  const ContainerInvoiceWidget({this.selectedImage,this.textTimeFinishPay,this.isFinished=false,required this.priceInsuranceInstallment,required this.priceTaxes,required this.priceTotal});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: EdgeInsetsGeometry.symmetric(vertical: 13,horizontal: 20),
      //  margin: EdgeInsetsGeometry.all(20),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInAppWidget(
            text: AppLanguageKeys.invoice,
            textSize: 12,
            fontWeightIndex: FontSelectionData.regularFontFamily,
            textColor: AppColors.darkColor,
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextInAppWidget(
                      text: AppLanguageKeys.insuranceInstallment,
                      textSize: 10,
                      fontWeightIndex: FontSelectionData.regularFontFamily,
                      textColor: AppColors.darkColor,
                    ),
                    Row(
                      children: [
                        TextInAppWidget(
                          text: priceInsuranceInstallment,
                          textSize: 10,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          textColor: AppColors.darkColor,
                        ),
                        SizedBox(width: 5,),
                        Image.asset(AppImageKeys.coin,color: AppColors.darkColor,width: 11,)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextInAppWidget(
                      text: AppLanguageKeys.taxes,
                      textSize: 10,
                      fontWeightIndex: FontSelectionData.regularFontFamily,
                      textColor: AppColors.darkColor,
                    ),
                    Row(
                      children: [
                        TextInAppWidget(
                          text: priceTaxes,
                          textSize: 10,
                          fontWeightIndex: FontSelectionData.regularFontFamily,
                          textColor: AppColors.darkColor,
                        ),
                        SizedBox(width: 5,),
                        Image.asset(AppImageKeys.coin,color: AppColors.darkColor,width: 11,)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(
                  thickness: 1,
                  color:AppColors.greyColor,
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextInAppWidget(
                      text: AppLanguageKeys.total,
                      textSize: 12,
                      fontWeightIndex: FontSelectionData.regularFontFamily,
                      textColor: AppColors.darkColor,
                    ),
                    Row(
                      children: [
                        TextInAppWidget(
                          text: priceTotal,
                          textSize: 14,
                          fontWeightIndex: FontSelectionData.mediumFontFamily,
                          textColor: AppColors.orangeColor,
                        ),
                        SizedBox(width: 5,),
                        Image.asset(AppImageKeys.coin,color: AppColors.orangeColor,width: 13,)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                if (isFinished! && selectedImage != null) Column(
                  children: [
                    Divider(
                      thickness: 1,
                      color: AppColors.greyColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            TextInAppWidget(
                              text: AppLanguageKeys.paidBy,
                              textSize: 10,
                              fontWeightIndex: FontSelectionData.regularFontFamily,
                              textColor: AppColors.darkColor,
                            ),
                            SizedBox(width: 5,),
                            Image.asset(selectedImage!,width: 50,)
                          ],
                        ),
                        TextInAppWidget(
                          text: textTimeFinishPay!,
                          textSize: 10,
                          fontWeightIndex: FontSelectionData.mediumFontFamily,
                          textColor: AppColors.orangeColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
