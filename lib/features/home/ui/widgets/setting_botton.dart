import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masbaha_app/core/helpers/extensions.dart';
import 'package:masbaha_app/features/home/logic/cubit/adhker_cubit.dart';

import '../../../../core/helpers/masbaha_images_list.dart';
import '../../../../core/theming/colors.dart';

class SettingBotton extends StatelessWidget {
  const SettingBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: -20,
      child: IconButton(
        onPressed: () {
          showModalBottomSheet(
            enableDrag: false,
            context: context,
            builder: (context) {
              return DraggableScrollableSheet(
                initialChildSize: 0.92,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: scrollController,
                    itemCount: masbahaImagesPathList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () async {
                          context
                              .read<AdhkerCubit>()
                              .changeMasbahaImage(masbahaImagesPathList[index]);
                          context.pop();
                        },
                        child: Container(
                          height: 170.h,
                          margin: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 15.h,
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: AppColors.lightGray,
                          ),
                          child: Image.asset(
                            masbahaImagesPathList[index],
                            height: 150.h,
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
        icon: const Icon(
          Icons.settings,
          color: AppColors.lighterGray,
          size: 30,
        ),
      ),
    );
  }
}
