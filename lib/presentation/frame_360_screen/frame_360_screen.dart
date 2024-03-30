import 'bloc/frame_360_bloc.dart';
import 'models/frame_360_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:carat_card/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Frame360Screen extends StatelessWidget {
  const Frame360Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame360Bloc>(
      create: (context) => Frame360Bloc(Frame360State(
        frame360ModelObj: Frame360Model(),
      ))
        ..add(Frame360InitialEvent()),
      child: Frame360Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Frame360Bloc, Frame360State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 10.v,
              ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 29.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClockWhiteA700,
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 13.v,
                                bottom: 12.v,
                              ),
                              child: Text(
                                "lbl_nike".tr,
                                style: CustomTextStyles.titleMediumMedium,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 15.v),
                              child: Text(
                                "msg_50_off_on_sneakers".tr,
                                style: CustomTextStyles.titleSmallPrimary,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 277.h,
                          margin: EdgeInsets.only(
                            left: 15.h,
                            top: 25.v,
                            right: 41.h,
                          ),
                          child: Text(
                            "msg_lorem_ipsum_dolor2".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumPrimaryContainer14
                                .copyWith(
                              height: 1.43,
                            ),
                          ),
                        ),
                        SizedBox(height: 22.v),
                        CustomElevatedButton(
                          text: "lbl_start_shopping".tr,
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
