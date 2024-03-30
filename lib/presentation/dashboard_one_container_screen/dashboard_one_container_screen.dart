import 'bloc/dashboard_one_container_bloc.dart';import 'models/dashboard_one_container_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/presentation/dashboard_one_page/dashboard_one_page.dart';import 'package:carat_card/presentation/offer_two_page/offer_two_page.dart';import 'package:carat_card/presentation/rewards_three_page/rewards_three_page.dart';import 'package:carat_card/presentation/transactions_one_page/transactions_one_page.dart';import 'package:carat_card/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class DashboardOneContainerScreen extends StatelessWidget {DashboardOneContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<DashboardOneContainerBloc>(create: (context) => DashboardOneContainerBloc(DashboardOneContainerState(dashboardOneContainerModelObj: DashboardOneContainerModel()))..add(DashboardOneContainerInitialEvent()), child: DashboardOneContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<DashboardOneContainerBloc, DashboardOneContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.dashboardOnePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));})));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.dashboardOnePage; case BottomBarEnum.Account: return AppRoutes.transactionsOnePage; case BottomBarEnum.Rewards: return AppRoutes.rewardsThreePage; case BottomBarEnum.Offers: return AppRoutes.offerTwoPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.dashboardOnePage: return DashboardOnePage.builder(context); case AppRoutes.transactionsOnePage: return TransactionsOnePage.builder(context); case AppRoutes.rewardsThreePage: return RewardsThreePage.builder(context); case AppRoutes.offerTwoPage: return OfferTwoPage.builder(context); default: return DefaultWidget();} } 
 }
