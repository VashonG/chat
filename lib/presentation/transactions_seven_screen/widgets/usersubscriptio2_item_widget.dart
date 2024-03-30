import '../models/usersubscriptio2_item_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Usersubscriptio2ItemWidget extends StatelessWidget {
  Usersubscriptio2ItemWidget(
    this.usersubscriptio2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Usersubscriptio2ItemModel usersubscriptio2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 38.v,
        width: 310.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.v),
                decoration: AppDecoration.white,
                child: Text(
                  usersubscriptio2ItemModelObj.subscriptionLab!,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallRedA200,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3,
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                    radius: BorderRadius.circular(
                      19.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          usersubscriptio2ItemModelObj.subscriptionNam!,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "lbl_feb_28_2023".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
