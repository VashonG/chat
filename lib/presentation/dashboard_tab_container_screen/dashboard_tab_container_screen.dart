import 'bloc/dashboard_tab_container_bloc.dart';import 'models/dashboard_tab_container_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/presentation/dashboard_one_page/dashboard_one_page.dart';import 'package:carat_card/presentation/dashboard_page/dashboard_page.dart';import 'package:carat_card/presentation/offer_two_page/offer_two_page.dart';import 'package:carat_card/presentation/rewards_three_page/rewards_three_page.dart';import 'package:carat_card/presentation/transactions_one_page/transactions_one_page.dart';import 'package:carat_card/widgets/app_bar/appbar_circleimage.dart';import 'package:carat_card/widgets/app_bar/appbar_image.dart';import 'package:carat_card/widgets/app_bar/appbar_title.dart';import 'package:carat_card/widgets/app_bar/custom_app_bar.dart';import 'package:carat_card/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';import 'package:outline_gradient_button/outline_gradient_button.dart';class DashboardTabContainerScreen extends StatefulWidget {const DashboardTabContainerScreen({Key? key}) : super(key: key);

@override DashboardTabContainerScreenState createState() =>  DashboardTabContainerScreenState();
static Widget builder(BuildContext context) { return BlocProvider<DashboardTabContainerBloc>(create: (context) => DashboardTabContainerBloc(DashboardTabContainerState(dashboardTabContainerModelObj: DashboardTabContainerModel()))..add(DashboardTabContainerInitialEvent()), child: DashboardTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class DashboardTabContainerScreenState extends State<DashboardTabContainerScreen> with  TickerProviderStateMixin {GlobalKey<NavigatorState> navigatorKey = GlobalKey();

late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<DashboardTabContainerBloc, DashboardTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: appTheme.black900, appBar: CustomAppBar(height: 56.v, leadingWidth: 58.h, leading: AppbarCircleimage(imagePath: ImageConstant.imgEllipse2, margin: EdgeInsets.only(left: 20.h, top: 9.v, bottom: 9.v), onTap: () {onTapCircleimage(context);}), title: AppbarTitle(text: "lbl_home".tr, margin: EdgeInsets.only(left: 12.h)), actions: [AppbarImage(svgPath: ImageConstant.imgHeroiconsoutlinebellBlueGray200, margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v), onTap: () {onTapHeroiconsoutlin(context);})]), body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 40.h, top: 31.v, right: 56.h), child: OutlineGradientButton(padding: EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v), strokeWidth: 1.h, gradient: LinearGradient(begin: Alignment(0.22, 0), end: Alignment(0.47, 0.44), colors: [appTheme.blueGray700, appTheme.gray800.withOpacity(0.8)]), corners: Corners(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)), child: Container(decoration: AppDecoration.outline.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [RichText(text: TextSpan(children: [TextSpan(text: "lbl_1_933".tr, style: CustomTextStyles.headlineLargeWhiteA700), TextSpan(text: "lbl_40".tr, style: CustomTextStyles.headlineLargeOnError)]), textAlign: TextAlign.left), SizedBox(height: 7.v), Text("lbl_total_balance".tr, style: CustomTextStyles.titleSmallWhiteA700), SizedBox(height: 25.v), Container(height: 40.v, width: 294.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, tabs: [Tab(child: Text("lbl_top_up".tr)), Tab(child: Text("lbl_freeze_card".tr)), Tab(child: Text("lbl_details".tr))]))])))), SizedBox(height: 470.v, child: TabBarView(controller: tabviewController, children: [DashboardPage.builder(context), DashboardPage.builder(context), DashboardPage.builder(context)]))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));})));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.dashboardOnePage; case BottomBarEnum.Account: return AppRoutes.transactionsOnePage; case BottomBarEnum.Rewards: return AppRoutes.rewardsThreePage; case BottomBarEnum.Offers: return AppRoutes.offerTwoPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.dashboardOnePage: return DashboardOnePage.builder(context); case AppRoutes.transactionsOnePage: return TransactionsOnePage.builder(context); case AppRoutes.rewardsThreePage: return RewardsThreePage.builder(context); case AppRoutes.offerTwoPage: return OfferTwoPage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the porfileOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the porfileOneScreen.
onTapCircleimage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.porfileOneScreen, ); } 
/// Navigates to the notificationsTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the notificationsTwoScreen.
onTapHeroiconsoutlin(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationsTwoScreen, ); } 
 }
