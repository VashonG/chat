import '../models/featuredoffer_item_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FeaturedofferItemWidget extends StatelessWidget {
  FeaturedofferItemWidget(
    this.featuredofferItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FeaturedofferItemModel featuredofferItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 203.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 33.h,
            vertical: 24.v,
          ),
          decoration: AppDecoration.outlineGray1001.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
              SizedBox(height: 21.v),
              Text(
                featuredofferItemModelObj.offerText!,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 8.v),
              Text(
                featuredofferItemModelObj.couponText!,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 20.v),
              Text(
                "lbl_5_stock_back".tr,
                style: CustomTextStyles.titleSmallPrimary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
