import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/cubit/adhker_cubit.dart';

class ResetCounterButton extends StatefulWidget {
  const ResetCounterButton({
    super.key,
  });

  @override
  State<ResetCounterButton> createState() => _ResetCounterButtonState();
}

class _ResetCounterButtonState extends State<ResetCounterButton>
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
      bottom: 119.h,
      right: 50.w,
      child: Transform.scale(
        scale: scale,
        child: GestureDetector(
          onTapUp: (details) => _animationController.forward(),
          onTapDown: (details) => _animationController.reverse(),
          onTap: () {
            context.read<AdhkerCubit>().resetCounter();
          },
          child: Container(
            width: 20.w,
            height: 20.h,
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
