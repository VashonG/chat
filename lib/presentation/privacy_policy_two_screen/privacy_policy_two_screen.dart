import 'bloc/privacy_policy_two_bloc.dart';import 'models/privacy_policy_two_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/widgets/custom_elevated_button.dart';import 'package:carat_card/widgets/custom_switch.dart';import 'package:flutter/material.dart';class PrivacyPolicyTwoScreen extends StatelessWidget {const PrivacyPolicyTwoScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<PrivacyPolicyTwoBloc>(create: (context) => PrivacyPolicyTwoBloc(PrivacyPolicyTwoState(privacyPolicyTwoModelObj: PrivacyPolicyTwoModel()))..add(PrivacyPolicyTwoInitialEvent()), child: PrivacyPolicyTwoScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), Padding(padding: EdgeInsets.only(left: 20.h, top: 15.v), child: Text("lbl_privacy_policy".tr, style: theme.textTheme.titleMedium)), SizedBox(height: 22.v), Align(alignment: Alignment.center, child: SizedBox(height: 600.v, width: 350.h, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: SizedBox(width: 343.h, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_lorem_ipsum_dolor4".tr, style: CustomTextStyles.bodyMediumBluegray70014.copyWith(height: 1.43)), TextSpan(text: "msg_faucibus_dui_suscipit".tr, style: CustomTextStyles.bodyMediumBluegray70014)]), textAlign: TextAlign.left))), Align(alignment: Alignment.bottomCenter, child: Container(height: 65.v, width: 350.h, margin: EdgeInsets.only(bottom: 1.v), decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.whiteA700.withOpacity(0), appTheme.whiteA700]))))]))), SizedBox(height: 5.v)])), bottomNavigationBar: Container(margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 16.v), decoration: AppDecoration.outlineBluegray50, child: Column(mainAxisSize: MainAxisSize.min, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("msg_i_agree_to_privacy".tr, style: theme.textTheme.titleSmall)), IntrinsicHeight(child: BlocSelector<PrivacyPolicyTwoBloc, PrivacyPolicyTwoState, bool?>(selector: (state) => state.isSelectedSwitch, builder: (context, isSelectedSwitch) {return CustomSwitch(value: isSelectedSwitch, onChange: (value) {context.read<PrivacyPolicyTwoBloc>().add(ChangeSwitchEvent(value: value));});}))]), SizedBox(height: 21.v), CustomElevatedButton(text: "lbl_continue".tr, onTap: () {onTapContinue(context);})])))); } 
/// Navigates to the porfileOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the porfileOneScreen.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.porfileOneScreen, ); } 
 }
