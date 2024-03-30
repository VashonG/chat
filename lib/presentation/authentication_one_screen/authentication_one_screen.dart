import 'bloc/authentication_one_bloc.dart';import 'models/authentication_one_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/core/utils/validation_functions.dart';import 'package:carat_card/widgets/custom_elevated_button.dart';import 'package:carat_card/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class AuthenticationOneScreen extends StatelessWidget {AuthenticationOneScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<AuthenticationOneBloc>(create: (context) => AuthenticationOneBloc(AuthenticationOneState(authenticationOneModelObj: AuthenticationOneModel()))..add(AuthenticationOneInitialEvent()), child: AuthenticationOneScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), SizedBox(height: 56.v), Text("lbl_login".tr, style: theme.textTheme.titleMedium), Container(margin: EdgeInsets.only(left: 20.h, top: 20.v, right: 20.h), padding: EdgeInsets.all(20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_email".tr, style: CustomTextStyles.bodyMediumBluegray700_1), SizedBox(height: 8.v), BlocSelector<AuthenticationOneBloc, AuthenticationOneState, TextEditingController?>(selector: (state) => state.emailController, builder: (context, emailController) {return CustomTextFormField(controller: emailController, hintText: "msg_john_doe_gmail_com".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "Please enter valid email";} return null;});})]), SizedBox(height: 21.v), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_password".tr, style: CustomTextStyles.bodyMediumBluegray700_1), SizedBox(height: 8.v), CustomImageView(imagePath: ImageConstant.imgPlacholder, height: 10.v, width: 102.h)])])), SizedBox(height: 21.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(onTap: () {onTapTxtSingup(context);}, child: Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_singup".tr, style: CustomTextStyles.bodyMediumBluegray200_1))), Padding(padding: EdgeInsets.only(left: 20.h), child: Text("lbl".tr, style: CustomTextStyles.bodyMediumBluegray200_1)), Padding(padding: EdgeInsets.only(left: 20.h, top: 1.v), child: Text("lbl_forgot_password".tr, style: CustomTextStyles.bodyMediumBluegray200_1))]), SizedBox(height: 5.v)]))), bottomNavigationBar: CustomElevatedButton(text: "lbl_singin".tr, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 41.v), onTap: () {onTapSingin(context);}))); } 
/// Navigates to the dashboardOneContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the dashboardOneContainerScreen.
onTapSingin(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardOneContainerScreen, ); } 
/// Navigates to the authenticationTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the authenticationTwoScreen.
onTapTxtSingup(BuildContext context) { NavigatorService.pushNamed(AppRoutes.authenticationTwoScreen, ); } 
 }
