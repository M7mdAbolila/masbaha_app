import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/constants.dart';
import '../../logic/cubit/adhker_cubit.dart';

class MasbahaImage extends StatelessWidget {
  const MasbahaImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdhkerCubit, AdhkerState>(
      builder: (context, state) {
        if (state is ChangeMasbahaImageState) {
          return Image.asset(
            state.path,
            height: 300.h,
          );
        } else {
          return Image.asset(
            masbahaImagePath!,
            height: 300.h,
          );
        }
      },
    );
  }
}
