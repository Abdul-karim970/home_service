import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_service/global/instances.dart';
import 'package:home_service/pages/AllServicePage/service_provider_all_bloc/bloc/add_service_sheet_pageviewer_bloc.dart';
import 'package:home_service/pages/AllServicePage/service_provider_all_bloc/currency_value_bloc/currency_bloc.dart';
import 'package:home_service/pages/AllServicePage/service_provider_all_bloc/picked_image_bloc/picked_image_bloc.dart';
import 'package:home_service/pages/AllServicePage/service_provider_all_bloc/services.dart/service_bloc.dart';
import 'package:home_service/pages/ServiceMasterPage/service_master_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'navigation/generate_rout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddServiceSheetPageViewerBloc(),
        ),
        BlocProvider(
          create: (context) => PickedImageBloc(),
        ),
        BlocProvider(
          create: (context) => CurrencyBloc(),
        ),
        BlocProvider(create: (context) => ServiceBloc())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        onGenerateRoute: onGenerateRout,
        initialRoute: ServiceMasterPage.name,
      ),
    );
  }
}
