import 'bloc/authentication_five_bloc.dart';
import 'models/authentication_five_model.dart';
import 'package:carat_card/core/app_export.dart';
import 'package:flutter/material.dart';

class AuthenticationFiveScreen extends StatelessWidget {
  const AuthenticationFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AuthenticationFiveBloc>(
      create: (context) => AuthenticationFiveBloc(AuthenticationFiveState(
        authenticationFiveModelObj: AuthenticationFiveModel(),
      ))
        ..add(AuthenticationFiveInitialEvent()),
      child: AuthenticationFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AuthenticationFiveBloc, AuthenticationFiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    height: 15.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                    ),
                  ),
                  SizedBox(height: 31.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse760,
                    height: 42.adaptSize,
                    width: 42.adaptSize,
                    radius: BorderRadius.circular(
                      21.h,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "lbl_john_doe".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 66.v),
                  Text(
                    "msg_face_recognition".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 20.v),
                  CustomImageView(
                    svgPath: ImageConstant.imgFramePrimary,
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                  ),
                  SizedBox(height: 22.v),
                  Text(
                    "msg_use_passcode_instead".tr,
                    style: CustomTextStyles.bodyMediumBluegray200_1,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
