import '../help_center_four_screen/widgets/chipviewgraph1l_item_widget.dart';import 'bloc/help_center_four_bloc.dart';import 'models/chipviewgraph1l_item_model.dart';import 'models/help_center_four_model.dart';import 'package:carat_card/core/app_export.dart';import 'package:carat_card/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class HelpCenterFourScreen extends StatelessWidget {const HelpCenterFourScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<HelpCenterFourBloc>(create: (context) => HelpCenterFourBloc(HelpCenterFourState(helpCenterFourModelObj: HelpCenterFourModel()))..add(HelpCenterFourInitialEvent()), child: HelpCenterFourScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 15.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), Padding(padding: EdgeInsets.only(left: 20.h, top: 13.v), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgArrowleft, height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapImgArrowleftone(context);}), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_chat".tr, style: theme.textTheme.titleMedium))])), Container(margin: EdgeInsets.only(left: 20.h, top: 22.v, right: 20.h), padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 10.v), decoration: AppDecoration.outlineBluegray50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("msg_hi_how_can_i_help".tr, style: CustomTextStyles.bodyMediumPrimaryContainer14)])), SizedBox(height: 20.v), Align(alignment: Alignment.center, child: BlocSelector<HelpCenterFourBloc, HelpCenterFourState, HelpCenterFourModel?>(selector: (state) => state.helpCenterFourModelObj, builder: (context, helpCenterFourModelObj) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(helpCenterFourModelObj?.chipviewgraph1lItemList.length ?? 0, (index) {Chipviewgraph1lItemModel model = helpCenterFourModelObj?.chipviewgraph1lItemList[index] ?? Chipviewgraph1lItemModel(); return Chipviewgraph1lItemWidget(model, onSelectedChipView: (value) {context.read<HelpCenterFourBloc>().add(UpdateChipViewEvent(index: index, isSelected: value));});}));})), SizedBox(height: 5.v)])), bottomNavigationBar: BlocSelector<HelpCenterFourBloc, HelpCenterFourState, TextEditingController?>(selector: (state) => state.messageController, builder: (context, messageController) {return CustomTextFormField(controller: messageController, margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 23.v), hintText: "msg_type_a_message".tr, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(12.h, 10.v, 14.h, 10.v), child: CustomImageView(svgPath: ImageConstant.imgVolumeOnprimarycontainer)), suffixConstraints: BoxConstraints(maxHeight: 40.v), contentPadding: EdgeInsets.only(left: 14.h, top: 11.v, bottom: 11.v), borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL20, filled: false);}))); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapImgArrowleftone(BuildContext context) { NavigatorService.goBack(); } 
 }
