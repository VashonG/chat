import '../models/chipviewgraph1l_item_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chipviewgraph1lItemWidget extends StatelessWidget {
  Chipviewgraph1lItemWidget(
    this.chipviewgraph1lItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Chipviewgraph1lItemModel chipviewgraph1lItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 11.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewgraph1lItemModelObj.graph1line,
        style: TextStyle(
          color: chipviewgraph1lItemModelObj.isSelected
              ? theme.colorScheme.primaryContainer.withOpacity(1)
              : appTheme.whiteA700,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: chipviewgraph1lItemModelObj.isSelected,
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.whiteA700,
      shape: chipviewgraph1lItemModelObj.isSelected
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray50,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
