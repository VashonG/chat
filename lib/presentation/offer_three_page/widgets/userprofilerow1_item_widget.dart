import '../models/userprofilerow1_item_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:carat_card/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilerow1ItemWidget extends StatelessWidget {
  Userprofilerow1ItemWidget(
    this.userprofilerow1ItemModelObj, {
    Key? key,
    this.onTapShopButtonText,
  }) : super(
          key: key,
        );

  Userprofilerow1ItemModel userprofilerow1ItemModelObj;

  VoidCallback? onTapShopButtonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.outlineGray1001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse138x38,
            height: 38.adaptSize,
            width: 38.adaptSize,
            radius: BorderRadius.circular(
              19.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 9.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_5_stock_back".tr,
                  style: CustomTextStyles.titleSmallPrimary,
                ),
                SizedBox(height: 6.v),
                Text(
                  "msg_lorem_ipsum_dolor".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.38,
                  ),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            width: 67.h,
            text: "lbl_shop".tr,
            margin: EdgeInsets.only(
              left: 48.h,
              top: 8.v,
              bottom: 8.v,
            ),
            onTap: () {
              onTapShopButtonText?.call();
            },
          ),
        ],
      ),
    );
  }
}
