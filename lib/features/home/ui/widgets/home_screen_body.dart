import 'package:flutter/material.dart';

import 'package:masbaha_app/features/home/ui/widgets/adhker_slider.dart';
import 'package:masbaha_app/features/home/ui/widgets/reset_counter_button.dart';

import '../../../../core/helpers/spacing.dart';
import 'counter_widget.dart';
import 'increase_counter_button.dart';
import 'masbaha_image.dart';
import 'setting_botton.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(20),
        const AdhkerSlider(),
        verticalSpace(40),
        const Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.center,
          children: [
            MasbahaImage(),
            CounterWidget(),
            IncreaseCounterButton(),
            ResetCounterButton(),
            SettingBotton(),
          ],
        ),
      ],
    );
  }
}
