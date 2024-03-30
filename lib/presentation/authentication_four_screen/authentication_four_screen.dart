import 'bloc/authentication_four_bloc.dart';import 'models/authentication_four_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:flutter/material.dart';class AuthenticationFourScreen extends StatelessWidget {const AuthenticationFourScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<AuthenticationFourBloc>(create: (context) => AuthenticationFourBloc(AuthenticationFourState(authenticationFourModelObj: AuthenticationFourModel()))..add(AuthenticationFourInitialEvent()), child: AuthenticationFourScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<AuthenticationFourBloc, AuthenticationFourState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), SizedBox(height: 31.v), CustomImageView(imagePath: ImageConstant.imgEllipse760, height: 42.adaptSize, width: 42.adaptSize, radius: BorderRadius.circular(21.h)), SizedBox(height: 9.v), Text("lbl_john_doe".tr, style: theme.textTheme.titleSmall), SizedBox(height: 66.v), Text("lbl_fingerprint".tr, style: theme.textTheme.titleMedium), SizedBox(height: 20.v), CustomImageView(svgPath: ImageConstant.imgFrame, height: 100.adaptSize, width: 100.adaptSize), SizedBox(height: 22.v), GestureDetector(onTap: () {onTapTxtUsepasscodeinst(context);}, child: Text("msg_use_passcode_instead".tr, style: CustomTextStyles.bodyMediumBluegray200_1)), SizedBox(height: 5.v)]))));}); } 
/// Navigates to the authenticationThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the authenticationThreeScreen.
onTapTxtUsepasscodeinst(BuildContext context) { NavigatorService.pushNamed(AppRoutes.authenticationThreeScreen, ); } 
 }
