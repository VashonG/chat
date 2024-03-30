import 'bloc/rewards_two_bloc.dart';
import 'models/rewards_two_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:carat_card/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class RewardsTwoScreen extends StatelessWidget {
  const RewardsTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RewardsTwoBloc>(
      create: (context) => RewardsTwoBloc(RewardsTwoState(
        rewardsTwoModelObj: RewardsTwoModel(),
      ))
        ..add(RewardsTwoInitialEvent()),
      child: RewardsTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<RewardsTwoBloc, RewardsTwoState>(
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
                            SizedBox(
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 48.adaptSize,
                                      width: 48.adaptSize,
                                      child: CircularProgressIndicator(
                                        value: 0.5,
                                        backgroundColor: appTheme.orange5002,
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          16.h,
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            ImageConstant.imgEllipse1436x36,
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
                                top: 3.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_atlassian".tr,
                                    style: CustomTextStyles.titleMediumMedium,
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "lbl_atls".tr,
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
                                    "lbl_92_90".tr,
                                    style: CustomTextStyles.titleMediumMedium,
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "lbl_32".tr,
                                    style: CustomTextStyles.bodyMediumRedA200,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32.v),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 17.v),
                          decoration: AppDecoration.outlineGray100.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder24,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl_amount".tr,
                                      style: CustomTextStyles.bodyMedium14,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 95.h),
                                      child: Text(
                                        "lbl_0_76".tr,
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
                                    Text(
                                      "lbl_balance".tr,
                                      style: CustomTextStyles.bodyMedium14,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 94.h),
                                      child: Text(
                                        "lbl_92_90".tr,
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
                                  right: 70.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text(
                                        "lbl_start_date".tr,
                                        style: CustomTextStyles.bodyMedium14,
                                      ),
                                    ),
                                    Text(
                                      "lbl_july_1st_2023".tr,
                                      style: CustomTextStyles
                                          .bodyMediumPrimaryContainer14,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.v),
                        CustomElevatedButton(
                          text: "lbl_stop_vesting".tr,
                          buttonStyle: CustomButtonStyles.fillRedA,
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
