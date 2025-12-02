import 'package:flutter/cupertino.dart';
import '../../../../../../../features/dashboard/employee/technical_support/custom_widget/row_message_support_widget.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../core/language/language_constant.dart';
import '../../../../../../../core/pages_widgets/text_form_field_widget.dart';
import '../../../../../../../core/theming/colors.dart';


class SearchWithListDataChat extends StatefulWidget {
  const SearchWithListDataChat({super.key});

  @override
  State<SearchWithListDataChat> createState() => _SearchWithListDataChatState();
}

class _SearchWithListDataChatState extends State<SearchWithListDataChat> {
  final TextEditingController textFormController = TextEditingController();

  @override
  void dispose() {
    textFormController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        TextFormFieldWidget(
          textFormController: textFormController,
          fillColor: AppColors.greyColorSearch,
          hintText: AppLanguageKeys.searchInMessages,
          hintTextSize: 11,
          hintTextColor: AppColors.darkColor.withOpacity(0.4),
          textSize: 12,
          contentPadding: EdgeInsetsGeometry.all(5),
          focusedBorderRadius: BorderRadius.circular(5),
          enabledBorderRadius: BorderRadius.circular(5),
        ),
        RowMessageSupportWidget(
          imagePath:AppImageKeys.support_message_emp1,
          userName:'الأدمن',
          message:'تمام',
          time:'12m',
        ),
        RowMessageSupportWidget(
          imagePath:AppImageKeys.support_message_emp2,
          userName:'المحاسب',
          message:'شكرا أخي',
          time:'12m',
        ),
        RowMessageSupportWidget(
          imagePath:AppImageKeys.support_message_emp3,
          userName:'الأدمن',
          message:'رقم الطلب #444 فيه مشكلة',
          time:'12m',
        ),
        RowMessageSupportWidget(
          imagePath:AppImageKeys.support_message_emp4,
          userName:'المحاسب',
          message:'شكرا أخي',
          time:'12m',
        ),
        RowMessageSupportWidget(
          imagePath:AppImageKeys.support_message_emp4,
          userName:'الأدمن',
          message:'رقم الطلب #444 فيه مشكلة',
          time:'12m',
        ),
        RowMessageSupportWidget(
          imagePath:AppImageKeys.support_message_emp4,
          userName:'المحاسب',
          message:'شكرا أخي',
          time:'12m',
        ),
        RowMessageSupportWidget(
          imagePath:AppImageKeys.support_message_emp4,
          userName:'الأدمن',
          message:'رقم الطلب #444 فيه مشكلة',
          time:'12m',
        ),
      ],
    );
  }
}
