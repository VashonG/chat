import '../notifications_two_screen/widgets/useroffer_item_widget.dart';import 'bloc/notifications_two_bloc.dart';import 'models/notifications_two_model.dart';import 'models/useroffer_item_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/presentation/dashboard_one_page/dashboard_one_page.dart';import 'package:carat_card/presentation/offer_two_page/offer_two_page.dart';import 'package:carat_card/presentation/rewards_three_page/rewards_three_page.dart';import 'package:carat_card/presentation/transactions_one_page/transactions_one_page.dart';import 'package:carat_card/widgets/app_bar/appbar_image.dart';import 'package:carat_card/widgets/app_bar/appbar_image_1.dart';import 'package:carat_card/widgets/app_bar/appbar_subtitle.dart';import 'package:carat_card/widgets/app_bar/custom_app_bar.dart';import 'package:carat_card/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class NotificationsTwoScreen extends StatelessWidget {NotificationsTwoScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<NotificationsTwoBloc>(create: (context) => NotificationsTwoBloc(NotificationsTwoState(notificationsTwoModelObj: NotificationsTwoModel()))..add(NotificationsTwoInitialEvent()), child: NotificationsTwoScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 44.h, leading: AppbarImage1(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 20.h), onTap: () {onTapArrowleftone(context);}), title: AppbarSubtitle(text: "lbl_notifications".tr, margin: EdgeInsets.only(left: 12.h)), actions: [AppbarImage(svgPath: ImageConstant.imgCheckmark, margin: EdgeInsets.only(left: 20.h), onTap: () {onTapCheckmarkone(context);}), AppbarImage(svgPath: ImageConstant.imgSettings, margin: EdgeInsets.only(left: 12.h, right: 20.h), onTap: () {onTapSettingsone(context);})]), body: SizedBox(width: double.maxFinite, child: Column(children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), Expanded(child: Padding(padding: EdgeInsets.only(left: 20.h, top: 59.v, right: 20.h), child: BlocSelector<NotificationsTwoBloc, NotificationsTwoState, NotificationsTwoModel?>(selector: (state) => state.notificationsTwoModelObj, builder: (context, notificationsTwoModelObj) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 20.v);}, itemCount: notificationsTwoModelObj?.userofferItemList.length ?? 0, itemBuilder: (context, index) {UserofferItemModel model = notificationsTwoModelObj?.userofferItemList[index] ?? UserofferItemModel(); return UserofferItemWidget(model);});})))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
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
onTapArrowleftone(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the notificationsThreeScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the notificationsThreeScreen.
onTapCheckmarkone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationsThreeScreen, ); } 
/// Navigates to the notificationsFourScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the notificationsFourScreen.
onTapSettingsone(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationsFourScreen, ); } 
 }
