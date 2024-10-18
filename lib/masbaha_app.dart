import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masbaha_app/core/theming/colors.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'features/home/logic/cubit/adhker_cubit.dart';

class MasbahaApp extends StatelessWidget {
  const MasbahaApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdhkerCubit(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          theme: ThemeData(
            primaryColor: AppColors.mainBlue,
            fontFamily: 'NotoKufiArabic',
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.homeScreen,
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }
}
