import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masbaha_app/features/home/data/models/adhker_model.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/text_styles.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({
    super.key,
    required this.adhkerModel,
  });
  final AdhkerModel adhkerModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 300.h,
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Wrap(
              children: [
                Text(
                  adhkerModel.title,
                  style: AppTextStyles.font24BlueBold,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            verticalSpace(10),
            Wrap(
              children: [
                Text(
                  adhkerModel.hadith ?? '',
                  style: AppTextStyles.font12GrayMedium,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
