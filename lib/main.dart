import 'package:flutter/material.dart';
import 'package:masbaha_app/core/helpers/extensions.dart';
import 'package:masbaha_app/core/helpers/shared_prefs_helper.dart';
import 'package:masbaha_app/masbaha_app.dart';

import 'core/helpers/constants.dart';
import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkCachedMasbahaImagePath();
  runApp(MasbahaApp(
    appRouter: AppRouter(),
  ));
}

checkCachedMasbahaImagePath() async {
  final String path =
      await SharedPrefHelper.getString(SharedPrefKeys.masbahaImagePath);
  if (path.isNullOrEmpty()) {
    masbahaImagePath = 'assets/images/silver.png';
  } else {
    masbahaImagePath = path;
  }
}
