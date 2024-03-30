import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/onboarding_three_screen/models/onboarding_three_model.dart';part 'onboarding_three_event.dart';part 'onboarding_three_state.dart';/// A bloc that manages the state of a OnboardingThree according to the event that is dispatched to it.
class OnboardingThreeBloc extends Bloc<OnboardingThreeEvent, OnboardingThreeState> {OnboardingThreeBloc(OnboardingThreeState initialState) : super(initialState) { on<OnboardingThreeInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<OnboardingThreeState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(OnboardingThreeInitialEvent event, Emitter<OnboardingThreeState> emit, ) async  { emit(state.copyWith(streetvalueoneController: TextEditingController(), cityController: TextEditingController(), zipcodeController: TextEditingController())); emit(state.copyWith(onboardingThreeModelObj: state.onboardingThreeModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
