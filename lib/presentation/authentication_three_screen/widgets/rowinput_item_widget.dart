import '../models/rowinput_item_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RowinputItemWidget extends StatelessWidget {
  RowinputItemWidget(
    this.rowinputItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RowinputItemModel rowinputItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 252.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Text(
              rowinputItemModelObj.input6!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Text(
              rowinputItemModelObj.input7!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Text(
              rowinputItemModelObj.input4!,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineLarge,
            ),
          ),
        ],
      ),
    );
  }
}
