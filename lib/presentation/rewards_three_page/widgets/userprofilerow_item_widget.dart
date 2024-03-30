import '../models/userprofilerow_item_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilerowItemWidget extends StatelessWidget {
  UserprofilerowItemWidget(
    this.userprofilerowItemModelObj, {
    Key? key,
    this.onTapUserprofilerow,
  }) : super(
          key: key,
        );

  UserprofilerowItemModel userprofilerowItemModelObj;

  VoidCallback? onTapUserprofilerow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserprofilerow?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse11,
              height: 24.adaptSize,
              width: 24.adaptSize,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 3.v,
                bottom: 3.v,
              ),
              child: Text(
                userprofilerowItemModelObj.userName!,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 4.v,
                bottom: 3.v,
              ),
              child: Text(
                userprofilerowItemModelObj.userAbnb!,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text(
                userprofilerowItemModelObj.userBalance!,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8.h, 4.v, 1.h, 3.v),
              child: Text(
                userprofilerowItemModelObj.userChange!,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumGreen400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
