import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterPriceSliderWidget extends StatelessWidget {
  const FilterPriceSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfRangeSlider(
      min: 0.0,
      max: 100.0,
      interval: 20,
      inactiveColor: AppColors.lightBlue,
      activeColor: AppColors.secondary,
      tooltipShape: const SfRectangularTooltipShape(),
      showDividers: true,
      showTicks: true,
      showLabels: true,
      enableTooltip: true,
      minorTicksPerInterval: 2,
      labelPlacement: LabelPlacement.onTicks,
      onChanged: (dynamic value){
      }, values: const SfRangeValues(30.0,80.0),
    );
  }
}