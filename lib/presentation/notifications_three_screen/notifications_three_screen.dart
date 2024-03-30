import 'bloc/notifications_three_bloc.dart';import 'models/notifications_three_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/presentation/dashboard_one_page/dashboard_one_page.dart';import 'package:carat_card/presentation/offer_two_page/offer_two_page.dart';import 'package:carat_card/presentation/rewards_three_page/rewards_three_page.dart';import 'package:carat_card/presentation/transactions_one_page/transactions_one_page.dart';import 'package:carat_card/widgets/custom_bottom_bar.dart';import 'package:carat_card/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class NotificationsThreeScreen extends StatelessWidget {NotificationsThreeScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<NotificationsThreeBloc>(create: (context) => NotificationsThreeBloc(NotificationsThreeState(notificationsThreeModelObj: NotificationsThreeModel()))..add(NotificationsThreeInitialEvent()), child: NotificationsThreeScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<NotificationsThreeBloc, NotificationsThreeState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), Padding(padding: EdgeInsets.only(left: 20.h, top: 13.v, right: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgArrowleft, height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapImgArrowleftone(context);}), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_notifications".tr, style: theme.textTheme.titleMedium)), Spacer(), CustomImageView(svgPath: ImageConstant.imgCheckmark, height: 24.adaptSize, width: 24.adaptSize), CustomImageView(svgPath: ImageConstant.imgSettings, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 12.h), onTap: () {onTapImgSettingsone(context);})])), SizedBox(height: 70.v), CustomIconButton(height: 36.adaptSize, width: 36.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.fillGrayTL181, child: CustomImageView(svgPath: ImageConstant.imgHeroiconsminimoon)), SizedBox(height: 13.v), Text("msg_no_unread_notifications".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 5.v)])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));})));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.dashboardOnePage; case BottomBarEnum.Account: return AppRoutes.transactionsOnePage; case BottomBarEnum.Rewards: return AppRoutes.rewardsThreePage; case BottomBarEnum.Offers: return AppRoutes.offerTwoPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.dashboardOnePage: return DashboardOnePage.builder(context); case AppRoutes.transactionsOnePage: return TransactionsOnePage.builder(context); case AppRoutes.rewardsThreePage: return RewardsThreePage.builder(context); case AppRoutes.offerTwoPage: return OfferTwoPage.builder(context); default: return DefaultWidget();} } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapImgArrowleftone(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the notificationsFourScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the notificationsFourScreen.
onTapImgSettingsone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationsFourScreen, ); } 
 }
