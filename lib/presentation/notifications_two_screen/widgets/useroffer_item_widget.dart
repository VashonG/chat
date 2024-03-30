import '../models/useroffer_item_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserofferItemWidget extends StatelessWidget {
  UserofferItemWidget(
    this.userofferItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserofferItemModel userofferItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(bottom: 42.v),
            color: appTheme.green50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Container(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(1.h),
              decoration: AppDecoration.fillGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgHeroiconsminigifttop,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.redA200,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                        border: Border.all(
                          color: appTheme.whiteA700,
                          width: 3.h,
                          strokeAlign: strokeAlignOutside,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userofferItemModelObj.offerText!,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    userofferItemModelObj.offerDescriptio!,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumBluegray700_1.copyWith(
                      height: 1.38,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    userofferItemModelObj.offerTime!,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallOnError,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
