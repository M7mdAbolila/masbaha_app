import 'package:flutter/material.dart';
import 'package:masbaha_app/core/theming/colors.dart';
import 'package:masbaha_app/core/theming/text_styles.dart';

import 'widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlue,
      appBar: AppBar(
        title: Text(
          'مسبحة',
          style: AppTextStyles.font24BlueBold,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: const HomeScreenBody(),
    );
  }
}
