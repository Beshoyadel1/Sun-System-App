import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../../features/dashboard/internal_orders/first_screen_internal_orders/first_screen_internal_orders.dart';
import '../../../features/dashboard/service_settings/added_maintenance_and_internal_services_in_service_settings/added_maintenance_and_internal_services_in_service_settings.dart';
import '../../../features/dashboard/permissions/first_screen_permissions/first_screen_permissions.dart';
import '../../../features/dashboard/service_settings/first_screen_service_settings/first_screen_service_settings.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final width = MediaQuery.of(context).size.width;
      print("📱 Screen width = $width");
    });
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
          home: const FirstScreenInternalOrders(),
        );
      },
    ),
);
  }
}
