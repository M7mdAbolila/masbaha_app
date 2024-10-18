import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masbaha_app/core/theming/colors.dart';

class ChangeButton extends StatelessWidget {
  const ChangeButton({super.key, this.onPressed, required this.icon});
  final VoidCallback? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        height: 60.h,
        width: 60.w,
        decoration: BoxDecoration(
          color: AppColors.mainBlue,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
