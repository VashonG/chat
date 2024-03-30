import '../rewards_three_page/widgets/userprofilerow_item_widget.dart';import 'bloc/rewards_three_bloc.dart';import 'models/rewards_three_model.dart';import 'models/userprofilerow_item_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/widgets/app_bar/appbar_image.dart';import 'package:carat_card/widgets/app_bar/appbar_image_1.dart';import 'package:carat_card/widgets/app_bar/appbar_subtitle.dart';import 'package:carat_card/widgets/app_bar/custom_app_bar.dart';import 'package:carat_card/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class RewardsThreePage extends StatelessWidget {const RewardsThreePage({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<RewardsThreeBloc>(create: (context) => RewardsThreeBloc(RewardsThreeState(rewardsThreeModelObj: RewardsThreeModel()))..add(RewardsThreeInitialEvent()), child: RewardsThreePage()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: CustomAppBar(leadingWidth: 44.h, leading: AppbarImage1(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 20.h), onTap: () {onTapArrowleftone(context);}), title: AppbarSubtitle(text: "lbl_search_stock".tr, margin: EdgeInsets.only(left: 12.h)), actions: [AppbarImage(svgPath: ImageConstant.imgHeroiconsoutlinebell, margin: EdgeInsets.symmetric(horizontal: 20.h), onTap: () {onTapHeroiconsoutlin(context);})]), body: SizedBox(width: double.maxFinite, child: Column(children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), BlocSelector<RewardsThreeBloc, RewardsThreeState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomTextFormField(controller: searchController, margin: EdgeInsets.only(left: 20.h, top: 59.v, right: 20.h), hintText: "lbl_search".tr, textInputAction: TextInputAction.done);}), Expanded(child: Padding(padding: EdgeInsets.only(left: 20.h, top: 8.v, right: 20.h), child: BlocSelector<RewardsThreeBloc, RewardsThreeState, RewardsThreeModel?>(selector: (state) => state.rewardsThreeModelObj, builder: (context, rewardsThreeModelObj) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 8.v);}, itemCount: rewardsThreeModelObj?.userprofilerowItemList.length ?? 0, itemBuilder: (context, index) {UserprofilerowItemModel model = rewardsThreeModelObj?.userprofilerowItemList[index] ?? UserprofilerowItemModel(); return UserprofilerowItemWidget(model, onTapUserprofilerow: () {onTapUserprofilerow(context);});});})))])))); } 
/// Navigates to the rewardsFourScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the rewardsFourScreen.
onTapUserprofilerow(BuildContext context) { NavigatorService.pushNamed(AppRoutes.rewardsFourScreen); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowleftone(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the notificationsTwoScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the notificationsTwoScreen.
onTapHeroiconsoutlin(BuildContext context) { NavigatorService.pushNamed(AppRoutes.notificationsTwoScreen, ); } 
 }
