import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../../features/dashboard/employee/technical_support/technical_support_emp/screens/team_work/list_team_work_view.dart';
import '../../../../../../../features/dashboard/employee/technical_support/technical_support_emp/screens/team_work/title_with_number_members.dart';

class ListDataContainerDesignTeamWork extends StatelessWidget {
  const ListDataContainerDesignTeamWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWithNumberMembers(),
        ListTeamWorkView(),
      ],
    );
  }
}
