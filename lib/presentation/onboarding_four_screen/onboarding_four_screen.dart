import 'bloc/onboarding_four_bloc.dart';import 'models/onboarding_four_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/widgets/custom_elevated_button.dart';import 'package:carat_card/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';class OnboardingFourScreen extends StatelessWidget {const OnboardingFourScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<OnboardingFourBloc>(create: (context) => OnboardingFourBloc(OnboardingFourState(onboardingFourModelObj: OnboardingFourModel()))..add(OnboardingFourInitialEvent()), child: OnboardingFourScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<OnboardingFourBloc, OnboardingFourState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h, top: 56.v), child: Text("msg_now_upload_your".tr, style: theme.textTheme.titleMedium))), Container(margin: EdgeInsets.only(left: 20.h, top: 20.v, right: 20.h), padding: EdgeInsets.symmetric(horizontal: 139.h, vertical: 48.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 64.adaptSize, width: 64.adaptSize, padding: EdgeInsets.all(20.h), decoration: IconButtonStyleHelper.fillOrange, child: CustomImageView(svgPath: ImageConstant.imgHeroiconsoutlinecamera)), SizedBox(height: 21.v), Text("lbl_add_photo".tr, style: CustomTextStyles.titleSmallPrimarySemiBold)])), Spacer(), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 4, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: theme.colorScheme.primary, dotColor: theme.colorScheme.onPrimaryContainer, dotHeight: 8.v, dotWidth: 8.h))), CustomElevatedButton(text: "lbl_next".tr, margin: EdgeInsets.only(left: 20.h, top: 20.v, right: 20.h), onTap: () {onTapNext(context);}), SizedBox(height: 22.v), GestureDetector(onTap: () {onTapTxtSkip(context);}, child: Text("lbl_skip".tr, style: CustomTextStyles.bodyMediumBluegray200_1)), SizedBox(height: 40.v)]))));}); } 
/// Navigates to the onboardingFiveScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the onboardingFiveScreen.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.onboardingFiveScreen, ); } 
/// Navigates to the onboardingSixScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the onboardingSixScreen.
onTapTxtSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.onboardingSixScreen, ); } 
 }
