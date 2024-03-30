import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/privacy_policy_two_screen/models/privacy_policy_two_model.dart';part 'privacy_policy_two_event.dart';part 'privacy_policy_two_state.dart';/// A bloc that manages the state of a PrivacyPolicyTwo according to the event that is dispatched to it.
class PrivacyPolicyTwoBloc extends Bloc<PrivacyPolicyTwoEvent, PrivacyPolicyTwoState> {PrivacyPolicyTwoBloc(PrivacyPolicyTwoState initialState) : super(initialState) { on<PrivacyPolicyTwoInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<PrivacyPolicyTwoState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(PrivacyPolicyTwoInitialEvent event, Emitter<PrivacyPolicyTwoState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false)); } 
 }
