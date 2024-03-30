import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:carat_card/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key})
      : super(
          key: key,
        );

  @override
  DashboardPageState createState() => DashboardPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => DashboardBloc(DashboardState(
        dashboardModelObj: DashboardModel(),
      ))
        ..add(DashboardInitialEvent()),
      child: DashboardPage(),
    );
  }
}

class DashboardPageState extends State<DashboardPage>
    with AutomaticKeepAliveClientMixin<DashboardPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.black900,
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 24.v,
                        right: 20.h,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_netflix".tr,
                                        style:
                                            CustomTextStyles.titleSmallGray50,
                                      ),
                                      SizedBox(height: 6.v),
                                      Text(
                                        "lbl_feb_28_2023".tr,
                                        style:
                                            CustomTextStyles.bodySmallOnError,
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.v),
                                  child: Text(
                                    "lbl_19_99".tr,
                                    style: CustomTextStyles.titleSmallRedA200,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20.h,
                              top: 20.v,
                              right: 20.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse338x38,
                                  height: 38.adaptSize,
                                  width: 38.adaptSize,
                                  radius: BorderRadius.circular(
                                    19.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.h,
                                    top: 2.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_five_guys".tr,
                                        style:
                                            CustomTextStyles.titleSmallGray50,
                                      ),
                                      SizedBox(height: 5.v),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_feb_28_2023".tr,
                                          style:
                                              CustomTextStyles.bodySmallOnError,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.v),
                                  child: Text(
                                    "lbl_26_95".tr,
                                    style: CustomTextStyles.titleSmallRedA200,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20.h,
                              top: 20.v,
                              right: 20.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                  height: 38.adaptSize,
                                  width: 38.adaptSize,
                                  padding: EdgeInsets.all(9.h),
                                  decoration: IconButtonStyleHelper.fillGray,
                                  child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgHeroiconsminibanknotes,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 16.h,
                                    top: 2.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_top_up2".tr,
                                        style:
                                            CustomTextStyles.titleSmallGray50,
                                      ),
                                      SizedBox(height: 5.v),
                                      Text(
                                        "lbl_feb_28_2023".tr,
                                        style:
                                            CustomTextStyles.bodySmallOnError,
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.v),
                                  child: Text(
                                    "lbl_500_00".tr,
                                    style: CustomTextStyles.titleSmallGreen500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40.v),
                          OutlineGradientButton(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 1.v,
                              right: 1.h,
                              bottom: 1.v,
                            ),
                            strokeWidth: 1.h,
                            gradient: LinearGradient(
                              begin: Alignment(0.22, 0),
                              end: Alignment(0.47, 0.44),
                              colors: [
                                appTheme.blueGray700,
                                appTheme.gray800.withOpacity(0.8),
                              ],
                            ),
                            corners: Corners(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(20.h),
                              decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_stock_rewards".tr,
                                    style: CustomTextStyles.titleSmallWhiteA700,
                                  ),
                                  SizedBox(height: 25.v),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 54.adaptSize,
                                        width: 54.adaptSize,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                height: 54.adaptSize,
                                                width: 54.adaptSize,
                                                child:
                                                    CircularProgressIndicator(
                                                  value: 0.5,
                                                  backgroundColor:
                                                      appTheme.blueGray700,
                                                  color:
                                                      theme.colorScheme.primary,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 36.adaptSize,
                                                width: 36.adaptSize,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    18.h,
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      ImageConstant
                                                          .imgEllipse336x36,
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 16.h,
                                          top: 9.v,
                                          bottom: 9.v,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_tesla".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray50,
                                            ),
                                            SizedBox(height: 5.v),
                                            Text(
                                              "lbl_tsla".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnError,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        height: 54.adaptSize,
                                        width: 54.adaptSize,
                                        child: CircularProgressIndicator(
                                          value: 0.5,
                                          backgroundColor: appTheme.blueGray700,
                                          color: theme.colorScheme.primary,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 16.h,
                                          top: 9.v,
                                          bottom: 9.v,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_atlassian".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray50,
                                            ),
                                            SizedBox(height: 5.v),
                                            Text(
                                              "lbl_atls".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnError,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.v),
                          OutlineGradientButton(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 1.v,
                              right: 1.h,
                              bottom: 1.v,
                            ),
                            strokeWidth: 1.h,
                            gradient: LinearGradient(
                              begin: Alignment(0.22, 0),
                              end: Alignment(0.47, 0.44),
                              colors: [
                                appTheme.blueGray700,
                                appTheme.gray800.withOpacity(0.8),
                              ],
                            ),
                            corners: Corners(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.h,
                                vertical: 21.v,
                              ),
                              decoration: AppDecoration.outline.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_featured_offers".tr,
                                    style: CustomTextStyles.titleSmallWhiteA700,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 25.v,
                                      right: 3.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 8.h),
                                            child: Column(
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEllipse6,
                                                  height: 54.adaptSize,
                                                  width: 54.adaptSize,
                                                  radius: BorderRadius.circular(
                                                    27.h,
                                                  ),
                                                ),
                                                SizedBox(height: 15.v),
                                                Text(
                                                  "lbl_5_stock_back".tr,
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.h),
                                            child: Column(
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEllipse7,
                                                  height: 54.adaptSize,
                                                  width: 54.adaptSize,
                                                  radius: BorderRadius.circular(
                                                    27.h,
                                                  ),
                                                ),
                                                SizedBox(height: 15.v),
                                                Text(
                                                  "lbl_5_stock_back".tr,
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Column(
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEllipse9,
                                                  height: 54.adaptSize,
                                                  width: 54.adaptSize,
                                                  radius: BorderRadius.circular(
                                                    27.h,
                                                  ),
                                                ),
                                                SizedBox(height: 15.v),
                                                Text(
                                                  "lbl_5_stock_back".tr,
                                                  style: theme
                                                      .textTheme.labelLarge,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
