import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hmis_web/shared/bloc_observer.dart';
import 'package:hmis_web/shared/cubit/cubit.dart';
import 'package:hmis_web/shared/cubit/states.dart';
import 'package:hmis_web/shared/styels/colors.dart';
import 'package:hmis_web/test.dart';
import 'layout/dashbord_layout/dashbord.dart';
import 'layout/home_layout/home_layout.dart';
import 'moudules/radiology/rad_main_menu/rad_main_menu.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: () => MaterialApp(
              title: 'Hospital Web',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                fontFamily: 'Montserrat',
                primarySwatch: MyColors.cPrimary,
                textTheme: TextTheme(button: TextStyle(fontSize: 45.sp)),
                appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.transparent,
                ),
              ),
              builder: (context, widget) {
                ScreenUtil.setContext(context);
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: widget!,
                );
              },
              home: HomeLayout(),
            ),
          );
        },
      ),
    );
  }
}
