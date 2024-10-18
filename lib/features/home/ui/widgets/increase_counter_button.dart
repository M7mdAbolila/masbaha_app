import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/cubit/adhker_cubit.dart';

class IncreaseCounterButton extends StatefulWidget {
  const IncreaseCounterButton({
    super.key,
  });

  @override
  State<IncreaseCounterButton> createState() => _IncreaseCounterButtonState();
}

class _IncreaseCounterButtonState extends State<IncreaseCounterButton>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 50),
      vsync: this,
      lowerBound: 0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double scale = 1 + _animationController.value;
    return Positioned(
      bottom: 40.h,
      child: Transform.scale(
        scale: scale,
        child: GestureDetector(
          onTapUp: (details) => _animationController.forward(),
          onTapDown: (details) => _animationController.reverse(),
          onTap: () {
            context.read<AdhkerCubit>().increaseCounter();
          },
          child: Container(
            width: 70.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.7),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
