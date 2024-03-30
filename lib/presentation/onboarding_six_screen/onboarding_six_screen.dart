import 'bloc/onboarding_six_bloc.dart';import 'models/onboarding_six_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';class OnboardingSixScreen extends StatelessWidget {const OnboardingSixScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<OnboardingSixBloc>(create: (context) => OnboardingSixBloc(OnboardingSixState(onboardingSixModelObj: OnboardingSixModel()))..add(OnboardingSixInitialEvent()), child: OnboardingSixScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<OnboardingSixBloc, OnboardingSixState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, body: SizedBox(width: double.maxFinite, child: Column(children: [Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 34.h), decoration: AppDecoration.white, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 15.v), CustomImageView(svgPath: ImageConstant.imgVolume, height: 1.v, width: 26.h)])), Spacer(), CustomImageView(svgPath: ImageConstant.imgGroup, height: 305.v, width: 332.h), SizedBox(height: 75.v), Text("msg_welcome_to_the_club".tr, style: CustomTextStyles.titleMediumWhiteA700), SizedBox(height: 75.v)])), bottomNavigationBar: CustomOutlinedButton(text: "lbl_get_in".tr, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 41.v), buttonStyle: CustomButtonStyles.outlineBlueGrayTL201, onTap: () {onTapGetin(context);})));}); } 
/// Navigates to the dashboardOneContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the dashboardOneContainerScreen.
onTapGetin(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardOneContainerScreen, ); } 
 }
