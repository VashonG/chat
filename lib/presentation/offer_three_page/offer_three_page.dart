import '../offer_three_page/widgets/list50off_on_item_widget.dart';import '../offer_three_page/widgets/userprofilerow1_item_widget.dart';import 'bloc/offer_three_bloc.dart';import 'models/list50off_on_item_model.dart';import 'models/offer_three_model.dart';import 'models/userprofilerow1_item_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:flutter/material.dart';class OfferThreePage extends StatefulWidget {const OfferThreePage({Key? key}) : super(key: key);

@override OfferThreePageState createState() =>  OfferThreePageState();
static Widget builder(BuildContext context) { return BlocProvider<OfferThreeBloc>(create: (context) => OfferThreeBloc(OfferThreeState(offerThreeModelObj: OfferThreeModel()))..add(OfferThreeInitialEvent()), child: OfferThreePage()); } 
 }
class OfferThreePageState extends State<OfferThreePage> with  AutomaticKeepAliveClientMixin<OfferThreePage> {@override bool get wantKeepAlive =>  true;
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: Column(children: [Expanded(child: SizedBox(width: double.maxFinite, child: Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(left: 20.h, top: 21.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_featured_offers".tr, style: theme.textTheme.titleSmall), SizedBox(height: 17.v), Expanded(child: Align(alignment: Alignment.centerRight, child: SizedBox(height: 210.v, child: BlocSelector<OfferThreeBloc, OfferThreeState, OfferThreeModel?>(selector: (state) => state.offerThreeModelObj, builder: (context, offerThreeModelObj) {return ListView.separated(scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 20.h);}, itemCount: offerThreeModelObj?.list50offOnItemList.length ?? 0, itemBuilder: (context, index) {List50offOnItemModel model = offerThreeModelObj?.list50offOnItemList[index] ?? List50offOnItemModel(); return List50offOnItemWidget(model);});})))), SizedBox(height: 21.v), Text("lbl_hot_deals".tr, style: theme.textTheme.titleSmall), Padding(padding: EdgeInsets.only(top: 17.v, right: 20.h), child: BlocSelector<OfferThreeBloc, OfferThreeState, OfferThreeModel?>(selector: (state) => state.offerThreeModelObj, builder: (context, offerThreeModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 8.v);}, itemCount: offerThreeModelObj?.userprofilerow1ItemList.length ?? 0, itemBuilder: (context, index) {Userprofilerow1ItemModel model = offerThreeModelObj?.userprofilerow1ItemList[index] ?? Userprofilerow1ItemModel(); return Userprofilerow1ItemWidget(model, onTapShopButtonText: () {onTapShopButtonText(context);});});}))])))))]))))); } 
/// Navigates to the frame360Screen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the [NavigatorService]
/// to push the named route for the frame360Screen.
onTapShopButtonText(BuildContext context) { NavigatorService.pushNamed(AppRoutes.frame360Screen, ); } 
 }
