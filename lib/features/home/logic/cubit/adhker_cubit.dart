import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_prefs_helper.dart';

part 'adhker_state.dart';

class AdhkerCubit extends Cubit<AdhkerState> {
  AdhkerCubit() : super(AdhkerInitial());

  int counter = 0;
  increaseCounter() {
    counter += 1;
    emit(
      ChangeCounterState(counter),
    );
  }

  resetCounter() {
    counter = 0;
    emit(
      ChangeCounterState(0),
    );
  }

  changeMasbahaImage(String path) async {
    await SharedPrefHelper.setData(
      SharedPrefKeys.masbahaImagePath,
      path,
    );
    masbahaImagePath = path;
    emit(
      ChangeMasbahaImageState(path),
    );
  }
}
