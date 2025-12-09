import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/admin_sun/technical_support_admin_sun/technical_support_emp/screens/team_work/list_team_work_view_admin_sun.dart';
import '../../../../../../../features/dashboard/admin_sun/technical_support_admin_sun/technical_support_emp/screens/team_work/title_with_number_members_admin_sun.dart';

class ListDataContainerDesignTeamWorkAdminSun extends StatelessWidget {
  const ListDataContainerDesignTeamWorkAdminSun({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWithNumberMembersAdminSun(),
        ListTeamWorkViewAdminSun(),
      ],
    );
  }
}
