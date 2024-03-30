import 'bloc/onboarding_five_bloc.dart';import 'models/onboarding_five_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/core/utils/validation_functions.dart';import 'package:carat_card/widgets/custom_elevated_button.dart';import 'package:carat_card/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable
class OnboardingFiveScreen extends StatelessWidget {OnboardingFiveScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<OnboardingFiveBloc>(create: (context) => OnboardingFiveBloc(OnboardingFiveState(onboardingFiveModelObj: OnboardingFiveModel()))..add(OnboardingFiveInitialEvent()), child: OnboardingFiveScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h, top: 55.v), child: Text("msg_almost_done_let_s".tr, style: theme.textTheme.titleMedium))), Container(margin: EdgeInsets.only(left: 20.h, top: 21.v, right: 20.h), padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_email_to_confirm".tr, style: CustomTextStyles.bodyMediumBluegray700_1), SizedBox(height: 8.v), BlocSelector<OnboardingFiveBloc, OnboardingFiveState, TextEditingController?>(selector: (state) => state.emailController, builder: (context, emailController) {return CustomTextFormField(controller: emailController, hintText: "msg_john_doe_gmail_com".tr, hintStyle: CustomTextStyles.bodyMediumBluegray700, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "Please enter valid email";} return null;}, borderDecoration: TextFormFieldStyleHelper.outlineGray, fillColor: appTheme.gray50);})]), SizedBox(height: 26.v), Text("msg_just_click_on_the".tr, style: theme.textTheme.titleSmall), SizedBox(height: 25.v), Text("lbl_resend_email".tr, style: CustomTextStyles.titleSmallPrimarySemiBold)])), Spacer(), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 4, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: theme.colorScheme.primary, dotColor: theme.colorScheme.onPrimaryContainer, dotHeight: 8.v, dotWidth: 8.h))), CustomElevatedButton(text: "lbl_go_to_email".tr, margin: EdgeInsets.only(left: 20.h, top: 20.v, right: 20.h), onTap: () {onTapGotoemail(context);}), SizedBox(height: 22.v), GestureDetector(onTap: () {onTapTxtSkip(context);}, child: Text("lbl_skip".tr, style: CustomTextStyles.bodyMediumBluegray200_1)), SizedBox(height: 40.v)]))))); } 
/// Navigates to the onboardingSixScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the onboardingSixScreen.
onTapGotoemail(BuildContext context) { NavigatorService.pushNamed(AppRoutes.onboardingSixScreen, ); } 
/// Navigates to the onboardingSixScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the onboardingSixScreen.
onTapTxtSkip(BuildContext context) { NavigatorService.pushNamed(AppRoutes.onboardingSixScreen, ); } 
 }
