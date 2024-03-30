import '../transactions_seven_screen/widgets/usersubscriptio2_item_widget.dart';import 'bloc/transactions_seven_bloc.dart';import 'models/transactions_seven_model.dart';import 'models/usersubscriptio2_item_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/presentation/dashboard_one_page/dashboard_one_page.dart';import 'package:carat_card/presentation/offer_two_page/offer_two_page.dart';import 'package:carat_card/presentation/rewards_three_page/rewards_three_page.dart';import 'package:carat_card/presentation/transactions_one_page/transactions_one_page.dart';import 'package:carat_card/widgets/app_bar/appbar_button.dart';import 'package:carat_card/widgets/app_bar/appbar_image.dart';import 'package:carat_card/widgets/app_bar/custom_app_bar.dart';import 'package:carat_card/widgets/custom_bottom_bar.dart';import 'package:carat_card/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class TransactionsSevenScreen extends StatelessWidget {TransactionsSevenScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<TransactionsSevenBloc>(create: (context) => TransactionsSevenBloc(TransactionsSevenState(transactionsSevenModelObj: TransactionsSevenModel()))..add(TransactionsSevenInitialEvent()), child: TransactionsSevenScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(title: AppbarButton(margin: EdgeInsets.only(left: 20.h), onTap: () {onTapFreezecard(context);}), actions: [AppbarImage(svgPath: ImageConstant.imgHeroiconsoutlinebell, margin: EdgeInsets.symmetric(horizontal: 20.h), onTap: () {onTapHeroiconsoutlin(context);})]), body: SizedBox(width: double.maxFinite, child: Column(children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), Container(margin: EdgeInsets.only(left: 20.h, top: 59.v, right: 20.h), padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 20.v), decoration: AppDecoration.outlineYellowC.copyWith(borderRadius: BorderRadiusStyle.circleBorder11), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 22.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Container(margin: EdgeInsets.only(top: 39.v), decoration: AppDecoration.fillOrange.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.symmetric(vertical: 13.v), child: Column(children: [SizedBox(width: 16.h, child: Divider(color: appTheme.whiteA700)), SizedBox(height: 12.v), SizedBox(width: 16.h, child: Divider(color: appTheme.whiteA700))])), SizedBox(height: 43.v, child: VerticalDivider(width: 2.h, thickness: 2.v, color: appTheme.whiteA700)), Container(height: 29.v, width: 16.h, margin: EdgeInsets.only(left: 19.h, top: 14.v), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: SizedBox(width: 16.h, child: Divider(color: appTheme.whiteA700))), CustomImageView(svgPath: ImageConstant.imgDownload, height: 29.v, width: 16.h, alignment: Alignment.center)]))])), CustomImageView(imagePath: ImageConstant.imgUntitleddesign, height: 40.v, width: 72.h, margin: EdgeInsets.only(bottom: 42.v))]))), Padding(padding: EdgeInsets.only(left: 22.h, top: 16.v), child: Text("lbl_neeraj_chinwan".tr, style: theme.textTheme.bodyLarge)), Padding(padding: EdgeInsets.only(left: 26.h, top: 2.v), child: Row(children: [CustomImageView(imagePath: ImageConstant.img, height: 11.v, width: 125.h, margin: EdgeInsets.symmetric(vertical: 5.v)), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_9303".tr, style: theme.textTheme.bodyLarge))])), CustomImageView(svgPath: ImageConstant.imgTelevision, height: 28.v, width: 85.h, alignment: Alignment.centerRight, margin: EdgeInsets.only(top: 2.v, right: 6.h))])), Container(margin: EdgeInsets.only(left: 20.h, top: 20.v, right: 20.h), padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 19.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 12.h, top: 2.v), child: Text("lbl_transactions".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 25.v), SizedBox(height: 560.v, width: 334.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: BlocSelector<TransactionsSevenBloc, TransactionsSevenState, TransactionsSevenModel?>(selector: (state) => state.transactionsSevenModelObj, builder: (context, transactionsSevenModelObj) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 19.v);}, itemCount: transactionsSevenModelObj?.usersubscriptio2ItemList.length ?? 0, itemBuilder: (context, index) {Usersubscriptio2ItemModel model = transactionsSevenModelObj?.usersubscriptio2ItemList[index] ?? Usersubscriptio2ItemModel(); return Usersubscriptio2ItemWidget(model);});}))), CustomElevatedButton(width: 334.h, text: "lbl_freeze_card2".tr, buttonStyle: CustomButtonStyles.fillRedA, onTap: () {onTapFreezecard1(context);}, alignment: Alignment.center)]))]))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.dashboardOnePage; case BottomBarEnum.Account: return AppRoutes.transactionsOnePage; case BottomBarEnum.Rewards: return AppRoutes.rewardsThreePage; case BottomBarEnum.Offers: return AppRoutes.offerTwoPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.dashboardOnePage: return DashboardOnePage.builder(context); case AppRoutes.transactionsOnePage: return TransactionsOnePage.builder(context); case AppRoutes.rewardsThreePage: return RewardsThreePage.builder(context); case AppRoutes.offerTwoPage: return OfferTwoPage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the dashboardOneContainerScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the dashboardOneContainerScreen.
onTapFreezecard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.dashboardOneContainerScreen, ); } 
/// Navigates to the notificationsTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the notificationsTwoScreen.
onTapHeroiconsoutlin(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationsTwoScreen, ); } 
/// Navigates to the transactionsEightScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the transactionsEightScreen.
onTapFreezecard1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.transactionsEightScreen, ); } 
 }
