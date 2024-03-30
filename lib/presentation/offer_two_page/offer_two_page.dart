import '../offer_two_page/widgets/userprofile1_item_widget.dart';import 'bloc/offer_two_bloc.dart';import 'models/offer_two_model.dart';import 'models/userprofile1_item_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/widgets/app_bar/appbar_image.dart';import 'package:carat_card/widgets/app_bar/appbar_image_1.dart';import 'package:carat_card/widgets/app_bar/appbar_subtitle.dart';import 'package:carat_card/widgets/app_bar/custom_app_bar.dart';import 'package:carat_card/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class OfferTwoPage extends StatelessWidget {const OfferTwoPage({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<OfferTwoBloc>(create: (context) => OfferTwoBloc(OfferTwoState(offerTwoModelObj: OfferTwoModel()))..add(OfferTwoInitialEvent()), child: OfferTwoPage()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: CustomAppBar(leadingWidth: 44.h, leading: AppbarImage1(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 20.h), onTap: () {onTapArrowleftone(context);}), title: AppbarSubtitle(text: "lbl_offers".tr, margin: EdgeInsets.only(left: 12.h)), actions: [AppbarImage(svgPath: ImageConstant.imgHeroiconsoutlinebell, margin: EdgeInsets.symmetric(horizontal: 20.h), onTap: () {onTapHeroiconsoutlin(context);})]), body: SizedBox(width: double.maxFinite, child: Column(children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), SizedBox(height: 59.v), Card(clipBehavior: Clip.antiAlias, elevation: 0, color: appTheme.whiteA700, shape: RoundedRectangleBorder(side: BorderSide(color: appTheme.gray100, width: 1.h), borderRadius: BorderRadiusStyle.circleBorder24), child: Container(height: 336.v, width: 352.h, decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder24), child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(imagePath: ImageConstant.imgRectangle51, height: 110.v, width: 352.h, radius: BorderRadius.vertical(top: Radius.circular(24.h)), alignment: Alignment.topCenter), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 24.h, bottom: 24.v), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgEllipse1, height: 60.adaptSize, width: 60.adaptSize, radius: BorderRadius.circular(30.h)), SizedBox(height: 22.v), Text("lbl_nike".tr, style: CustomTextStyles.titleMediumMedium16), SizedBox(height: 11.v), SizedBox(width: 277.h, child: Text("msg_lorem_ipsum_dolor2".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumPrimaryContainer14.copyWith(height: 1.43))), SizedBox(height: 18.v), Row(children: [CustomElevatedButton(width: 87.h, text: "lbl_redeem".tr, onTap: () {onTapRedeem(context);}), Padding(padding: EdgeInsets.only(left: 16.h, top: 11.v, bottom: 11.v), child: Text("msg_50_off_on_sneakers".tr, style: CustomTextStyles.titleSmallPrimary))])])))]))), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h, top: 21.v), child: Text("lbl_similar_offers".tr, style: theme.textTheme.titleSmall))), Expanded(child: Padding(padding: EdgeInsets.only(left: 20.h, top: 17.v, right: 20.h), child: BlocSelector<OfferTwoBloc, OfferTwoState, OfferTwoModel?>(selector: (state) => state.offerTwoModelObj, builder: (context, offerTwoModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 8.v);}, itemCount: offerTwoModelObj?.userprofile1ItemList.length ?? 0, itemBuilder: (context, index) {Userprofile1ItemModel model = offerTwoModelObj?.userprofile1ItemList[index] ?? Userprofile1ItemModel(); return Userprofile1ItemWidget(model);});})))])))); } 


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
/// Navigates to the frame360Screen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the frame360Screen.
onTapRedeem(BuildContext context) { NavigatorService.pushNamed(AppRoutes.frame360Screen, ); } 
 }
