import 'bloc/rewards_four_bloc.dart';
import 'models/rewards_four_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:carat_card/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class RewardsFourScreen extends StatelessWidget {
  const RewardsFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RewardsFourBloc>(
      create: (context) => RewardsFourBloc(RewardsFourState(
        rewardsFourModelObj: RewardsFourModel(),
      ))
        ..add(RewardsFourInitialEvent()),
      child: RewardsFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<RewardsFourBloc, RewardsFourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(8.h),
              child: Column(
                children: [
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(20.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 21.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClockBlueGray100,
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 3.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_airbnb".tr,
                                    style: CustomTextStyles.titleMediumMedium,
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "lbl_abnb".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(top: 3.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "lbl_167_23".tr,
                                    style: CustomTextStyles.titleMediumMedium,
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "lbl_2_16".tr,
                                    style: CustomTextStyles.bodyMediumGreen400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32.v),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 16.v),
                          decoration: AppDecoration.outlineGray100.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder24,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 2.v,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl_24h_volume".tr,
                                      style: CustomTextStyles.bodyMedium14,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 68.h),
                                      child: Text(
                                        "lbl_328m".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 14.v),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 13.v,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text(
                                        "lbl_market_cap".tr,
                                        style: CustomTextStyles.bodyMedium14,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 70.h),
                                      child: Text(
                                        "lbl_73b".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 13.v),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 11.v,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.v),
                                      child: Text(
                                        "lbl_ytd_performance".tr,
                                        style: CustomTextStyles.bodyMedium14,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 28.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.h,
                                        vertical: 2.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillGreen.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder11,
                                      ),
                                      child: Text(
                                        "lbl_16_2".tr,
                                        style:
                                            CustomTextStyles.labelLargeGreen500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.v),
                        CustomElevatedButton(
                          text: "lbl_start_vesting".tr,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
