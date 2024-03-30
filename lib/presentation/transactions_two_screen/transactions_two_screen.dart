import 'bloc/transactions_two_bloc.dart';
import 'models/transactions_two_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:flutter/material.dart';

class TransactionsTwoScreen extends StatelessWidget {
  const TransactionsTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionsTwoBloc>(
      create: (context) => TransactionsTwoBloc(TransactionsTwoState(
        transactionsTwoModelObj: TransactionsTwoModel(),
      ))
        ..add(TransactionsTwoInitialEvent()),
      child: TransactionsTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<TransactionsTwoBloc, TransactionsTwoState>(
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
                              imagePath: ImageConstant.imgEllipse348x48,
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              radius: BorderRadius.circular(
                                24.h,
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
                                    "lbl_adobe".tr,
                                    style: CustomTextStyles.titleMediumMedium,
                                  ),
                                  SizedBox(height: 6.v),
                                  Text(
                                    "lbl_feb_28_2023".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 11.v,
                                bottom: 12.v,
                              ),
                              child: Text(
                                "lbl_26_95".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 31.v),
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
                                  right: 64.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.v),
                                      child: Text(
                                        "lbl_status".tr,
                                        style: CustomTextStyles.bodyMedium14,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8.h,
                                        vertical: 1.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillGreen.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder11,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 6.adaptSize,
                                            width: 6.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 6.v),
                                            decoration: BoxDecoration(
                                              color: appTheme.green300,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                3.h,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 8.h,
                                              top: 3.v,
                                            ),
                                            child: Text(
                                              "lbl_completed".tr,
                                              style: CustomTextStyles
                                                  .labelLargeGreen500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12.v),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 13.v,
                                  right: 62.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lbl_card".tr,
                                      style: CustomTextStyles.bodyMedium14,
                                    ),
                                    Text(
                                      "lbl_general_9303".tr,
                                      style: CustomTextStyles
                                          .bodyMediumPrimaryContainer14,
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
                                        "lbl_category".tr,
                                        style: CustomTextStyles.bodyMedium14,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 85.h),
                                      child: Text(
                                        "lbl_software".tr,
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
                                  top: 13.v,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl_statement".tr,
                                      style: CustomTextStyles.bodyMedium14,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 77.h),
                                      child: Text(
                                        "lbl_download".tr,
                                        style: CustomTextStyles
                                            .titleSmallOrange400,
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
                                  top: 14.v,
                                  right: 68.h,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "lbl_receipt".tr,
                                      style: CustomTextStyles.bodyMedium14,
                                    ),
                                    Text(
                                      "lbl_attach_receipt".tr,
                                      style:
                                          CustomTextStyles.titleSmallOrange400,
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
