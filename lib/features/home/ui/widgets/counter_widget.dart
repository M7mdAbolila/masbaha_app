
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';
import '../../logic/cubit/adhker_cubit.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 58.h,
      right: 40.w,
      child: BlocBuilder<AdhkerCubit, AdhkerState>(
        builder: (context, state) {
          if (state is ChangeCounterState) {
            return Text(
              state.counter.toString(),
              style: AppTextStyles.font32DigitalBold,
            );
          } else {
            return Text(
              '0',
              style: AppTextStyles.font32DigitalBold,
            );
          }
        },
      ),
    );
  }
}
