import 'package:carat_card/core/app_export.dart';
import 'package:carat_card/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarButton extends StatelessWidget {
  AppbarButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 24.v,
          width: 139.h,
          text: "lbl_freeze_card2".tr,
          leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            child: CustomImageView(
              svgPath: ImageConstant.imgArrowleft,
            ),
          ),
          buttonStyle: CustomButtonStyles.none,
          buttonTextStyle: theme.textTheme.titleMedium!,
        ),
      ),
    );
  }
}
