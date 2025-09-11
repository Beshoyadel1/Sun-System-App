import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../../features/wallet_bonus_send_code_to_friend/points_for_wallet_bonus_send_code_to_friend/ui/points_for_wallet_bonus_send_code_to_friend.dart';
import '../../../features/wallet_bonus_send_code_to_friend/send_code_for_wallet_bonus_send_code_to_friend/ui/send_code_for_wallet_bonus_send_code_to_friend.dart';
import '../../../features/wallet_bonus_send_code_to_friend/wallet_for_wallet_bonus_send_code_to_friend/ui/wallet_for_wallet_bonus_send_code_to_friend.dart';
import '../../../features/warranty/warranty_subscription/ui/warranty_subscription.dart';
import '../../../features/warranty/warranty_first/ui/warranty_first.dart';
import '../../../features/profile/notifications/ui/notifications.dart';
import '../../../features/Insurance/page_choose_payment_details/logic/radio_payment_cubit.dart';
import '../../../features/insurance_new/insurance_offers_new/ui/insurance_new_offers.dart';
import '../../../features/Insurance/insurance_offers/ui/insurance_offers.dart';
import '../core/language/language.dart';
import '../core/language/language_cubit/language_cubit.dart';
import '../core/theming/colors.dart';
import 'core/app_cubit/app_cubit.dart';
import 'core/language/language_cubit/language_states.dart';
import 'core/setup_git_it.dart';



final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  setupGetIt();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>(
          create: (_) => getIt<LanguageCubit>()..getLanguageFromSharedPreference(),
        ),

      ],
      child: const SunApp(),
    ),
  );
}



class SunApp extends StatelessWidget {
  const SunApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) => getIt<AppCubit>(),
      child: BlocBuilder<LanguageCubit, LanguageStates>(
      buildWhen: (previous, current) {
        return current is ChangeAllAppLanguageState;
      },
      builder: (BuildContext context, state) {
        return MaterialApp(
          scaffoldMessengerKey: scaffoldKey,
          supportedLocales: supportedLocales,
          locale: LanguageCubit.get(context).selectedLanguage,
          localizationsDelegates: const [
            AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown
            },
          ),
          title: 'SUN SYSTEM',
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.lightWhiteColor,
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const WalletForWalletBonusSendCodeToFriend(),
        );
      },
    ),
);
  }
}
