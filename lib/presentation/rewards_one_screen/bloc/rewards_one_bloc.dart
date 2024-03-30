import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/rewards_one_screen/models/rewards_one_model.dart';part 'rewards_one_event.dart';part 'rewards_one_state.dart';/// A bloc that manages the state of a RewardsOne according to the event that is dispatched to it.
class RewardsOneBloc extends Bloc<RewardsOneEvent, RewardsOneState> {RewardsOneBloc(RewardsOneState initialState) : super(initialState) { on<RewardsOneInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<RewardsOneState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(RewardsOneInitialEvent event, Emitter<RewardsOneState> emit, ) async  { emit(state.copyWith(totalsharesoneController: TextEditingController(), currentsharesController: TextEditingController())); emit(state.copyWith(rewardsOneModelObj: state.rewardsOneModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
