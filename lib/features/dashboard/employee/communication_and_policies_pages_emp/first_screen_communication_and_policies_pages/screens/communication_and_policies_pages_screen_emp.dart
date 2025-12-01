import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/custom_widget/tab_communication_and_policies_emp_widget.dart';
import '../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/first_screen_communication_and_policies_pages/screens/about_sun_emp/about_sun_emp.dart';
import '../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/first_screen_communication_and_policies_pages/screens/contact_us_emp/contact_us_emp.dart';
import '../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/first_screen_communication_and_policies_pages/screens/privacy_policy_emp/privacy_policy_emp.dart';
import '../../../../../../features/dashboard/employee/communication_and_policies_pages_emp/first_screen_communication_and_policies_pages/screens/terms_and_conditions_emp/terms_and_conditions_emp.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_cubit.dart';
import '../../../../../../features/insurance_new/insurance_offers_new/logic/tab_new_cubit/tab_insurance_new_offers_state.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/language/language_constant.dart';

class CommunicationAndPoliciesPagesScreenEmp extends StatefulWidget {
  const CommunicationAndPoliciesPagesScreenEmp({super.key});

  @override
  State<CommunicationAndPoliciesPagesScreenEmp> createState() => _CommunicationAndPoliciesPagesScreenEmpState();
}

class _CommunicationAndPoliciesPagesScreenEmpState extends State<CommunicationAndPoliciesPagesScreenEmp> {
  late TabInsuranceNewOffersCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = context.read<TabInsuranceNewOffersCubit>();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabInsuranceNewOffersCubit, TabInsuranceNewOffersState>(
      buildWhen: (previous, current) => current is TabInsuranceChangedState,
      builder: (context, state) {
        return DefaultTabController(
          length: eventsNameList.length,
          child: Column(
            children: [
              TabBar(
                onTap: (index) {
                  cubit.changeTab(index);
                },
                tabAlignment: TabAlignment.start,
                labelPadding: EdgeInsets.zero,
                indicatorColor: AppColors.transparent,
                dividerColor: AppColors.transparent,
                isScrollable: true,
                tabs: eventsNameList.map((eventsName) {
                  final index = eventsNameList.indexOf(eventsName);
                  return TabCommunicationAndPoliciesEmpWidget(
                    isSelected: cubit.currentIndex == index,
                    text: eventsName,
                  );
                }).toList(),
              ),
              Expanded(
                child: TabBarView(
                  children: widgetInsuranceOffers,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
final List<Widget> widgetInsuranceOffers = const [
  ContactUsEmp(),
  AboutSunEmp(),
  PrivacyPolicyEmp(),
  TermsAndConditionsEmp(),
];
final List<String> eventsNameList = [
  AppLanguageKeys.contactUs,
  AppLanguageKeys.aboutSun,
  AppLanguageKeys.privacyPolicy,
  AppLanguageKeys.termsAndConditions,
];