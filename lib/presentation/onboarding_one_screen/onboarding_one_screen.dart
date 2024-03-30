import 'bloc/onboarding_one_bloc.dart';import 'models/onboarding_one_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/widgets/custom_elevated_button.dart';import 'package:carat_card/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';class OnboardingOneScreen extends StatelessWidget {const OnboardingOneScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<OnboardingOneBloc>(create: (context) => OnboardingOneBloc(OnboardingOneState(onboardingOneModelObj: OnboardingOneModel()))..add(OnboardingOneInitialEvent()), child: OnboardingOneScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<OnboardingOneBloc, OnboardingOneState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), SizedBox(height: 111.v), CustomImageView(svgPath: ImageConstant.imgEmptystateswel, height: 333.v, width: 224.h), SizedBox(height: 51.v), Text("msg_the_most_innovative".tr, style: theme.textTheme.titleMedium), Spacer(), CustomElevatedButton(text: "msg_create_an_account".tr, margin: EdgeInsets.symmetric(horizontal: 20.h), onTap: () {onTapCreatean(context);}), CustomOutlinedButton(text: "msg_i_already_have_an".tr, margin: EdgeInsets.fromLTRB(20.h, 12.v, 20.h, 41.v), onTap: () {onTapIalreadyhave(context);})]))));}); } 
/// Navigates to the onboardingTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the onboardingTwoScreen.
onTapCreatean(BuildContext context) { NavigatorService.pushNamed(AppRoutes.onboardingTwoScreen, ); } 
/// Navigates to the authenticationOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the authenticationOneScreen.
onTapIalreadyhave(BuildContext context) { NavigatorService.pushNamed(AppRoutes.authenticationOneScreen, ); } 
 }
