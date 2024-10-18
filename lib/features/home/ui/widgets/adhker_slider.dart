import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masbaha_app/core/helpers/adhker_list.dart';

import 'slider_item.dart';

class AdhkerSlider extends StatefulWidget {
  const AdhkerSlider({super.key});

  @override
  State<AdhkerSlider> createState() => _AdhkerSliderState();
}

class _AdhkerSliderState extends State<AdhkerSlider> {
  final CarouselSliderController carouselSliderController =
      CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CarouselSlider.builder(
          controller: carouselSliderController,
          options: CarouselOptions(
            height: 310.h,
            enlargeCenterPage: true,
          ),
          itemCount: adhkerList.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return SliderItem(
              adhkerModel: adhkerList[index],
            );
          },
        ),
      ],
    );
  }
}
