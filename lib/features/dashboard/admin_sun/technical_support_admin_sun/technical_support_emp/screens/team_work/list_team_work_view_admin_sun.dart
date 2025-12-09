import 'package:flutter/cupertino.dart';
import '../../../../../../../core/theming/assets.dart';
import '../../../../../../../features/dashboard/employee/technical_support/custom_widget/row_member_team_work_widget.dart';

class ListTeamWorkViewAdminSun extends StatelessWidget {
  const ListTeamWorkViewAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        RowMemberTeamWorkWidget(
          imagePath: AppImageKeys.support_message_emp1,
          title: 'المدير التنفيذي',
          userName:'الاسم',
        ),
        RowMemberTeamWorkWidget(
          imagePath: AppImageKeys.support_message_emp2,
          title: 'الأدمن',
          userName:'الاسم',
        ),
        RowMemberTeamWorkWidget(
          imagePath: AppImageKeys.support_message_emp3,
          title: ' المحاسب',
          userName:'الاسم',
        ),
        RowMemberTeamWorkWidget(
          imagePath: AppImageKeys.support_message_emp4,
          title: 'كاشير1',
          userName:'الاسم',
        ),
      ],
    );
  }
}
