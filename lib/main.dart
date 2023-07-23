import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pokedex/routers/route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'hive/data_source.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  await DataSource.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.noTransition,
      useInheritedMediaQuery: true,
      builder: (context, widget) {
        return ScreenUtilInit(
          minTextAdapt: true,
          useInheritedMediaQuery: true,
          splitScreenMode: true,
          builder: (BuildContext context, Widget? child) {
            return Theme(
                data: ThemeData(),
                child: MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                  child: widget!,
                ));
          },
        );
      },
      initialRoute: Pages.splash,
      getPages: NavigateRoute.pages,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
