import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_system_app/core/language/language_constant.dart';
import 'package:sun_system_app/core/theming/assets.dart';
import 'package:sun_system_app/core/theming/colors.dart';
import 'package:sun_system_app/core/theming/fonts.dart';
import 'package:sun_system_app/core/theming/text_styles.dart';
import 'package:sun_system_app/features/Insurance/insurance_offers/ui/screens/container_best_offer.dart';
import 'package:sun_system_app/features/request_service/custom_widget/row_image_with_two_text.dart';
import 'package:sun_system_app/features/request_service/first_page_in_service_request/logic/select_service_cubit/service_selection_cubit.dart';
import 'package:sun_system_app/features/request_service/first_page_in_service_request/ui/screens/row_circle_image_text_loading.dart';
import 'package:sun_system_app/features/request_service/first_page_in_service_request/ui/screens/text_in_select_the_type_of_service.dart';
import 'package:sun_system_app/features/request_service/custom_widget/container_data_list_offer.dart';
import 'package:sun_system_app/features/request_service/offers_presented_in_service_request/ui/screens/row_accept_reject_with_icon.dart';
import 'package:sun_system_app/features/warranty/custom_widget/row_number_coin_widget.dart';

class ListDataOffersPresentedInServiceRequest extends StatelessWidget {

  const ListDataOffersPresentedInServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        RowCircleImageTextLoading(),
        SizedBox(height: 50,),
        TextInSelectTheTypeOfService(text: AppLanguageKeys.serviceCenterOffers),
        ContainerDataListOffer(
          isBestOffer: true,
        ),
        ContainerDataListOffer(),
        ContainerDataListOffer(),
        ContainerDataListOffer(),
      ],
    );
  }
}
