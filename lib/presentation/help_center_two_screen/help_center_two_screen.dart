import 'bloc/help_center_two_bloc.dart';import 'models/help_center_two_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:flutter/material.dart';class HelpCenterTwoScreen extends StatelessWidget {const HelpCenterTwoScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<HelpCenterTwoBloc>(create: (context) => HelpCenterTwoBloc(HelpCenterTwoState(helpCenterTwoModelObj: HelpCenterTwoModel()))..add(HelpCenterTwoInitialEvent()), child: HelpCenterTwoScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<HelpCenterTwoBloc, HelpCenterTwoState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), Padding(padding: EdgeInsets.only(left: 20.h, top: 13.v), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgArrowleft, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 1.v), onTap: () {onTapImgArrowleftone(context);}), Padding(padding: EdgeInsets.only(left: 12.h, top: 3.v), child: Text("lbl_help_center".tr, style: theme.textTheme.titleMedium))])), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapGraph1line(context);}, child: Container(margin: EdgeInsets.fromLTRB(20.h, 20.v, 20.h, 5.v), padding: EdgeInsets.all(20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("msg_what_s_your_issue".tr, style: theme.textTheme.titleSmall), SizedBox(height: 24.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 3.v), child: Text("msg_i_cannot_do_this".tr, style: CustomTextStyles.bodyMediumPrimaryContainer14)), CustomImageView(svgPath: ImageConstant.imgHeroiconsoutli24x24, height: 24.adaptSize, width: 24.adaptSize)]), SizedBox(height: 24.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v, bottom: 2.v), child: Text("msg_i_need_help_on_that".tr, style: CustomTextStyles.bodyMediumPrimaryContainer14)), CustomImageView(svgPath: ImageConstant.imgHeroiconsoutli24x24, height: 24.adaptSize, width: 24.adaptSize)]), SizedBox(height: 24.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 3.v), child: Text("lbl_and_also_this".tr, style: CustomTextStyles.bodyMediumPrimaryContainer14)), CustomImageView(svgPath: ImageConstant.imgHeroiconsoutli24x24, height: 24.adaptSize, width: 24.adaptSize)]), SizedBox(height: 24.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v, bottom: 2.v), child: Text("lbl_i_need_help".tr, style: CustomTextStyles.bodyMediumPrimaryContainer14)), CustomImageView(svgPath: ImageConstant.imgHeroiconsoutli24x24, height: 24.adaptSize, width: 24.adaptSize)])]))))]))));}); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapImgArrowleftone(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the helpCenterThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the helpCenterThreeScreen.
onTapGraph1line(BuildContext context) { NavigatorService.pushNamed(AppRoutes.helpCenterThreeScreen, ); } 
 }
