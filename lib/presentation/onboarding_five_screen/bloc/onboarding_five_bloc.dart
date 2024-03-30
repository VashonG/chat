import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/onboarding_five_screen/models/onboarding_five_model.dart';part 'onboarding_five_event.dart';part 'onboarding_five_state.dart';/// A bloc that manages the state of a OnboardingFive according to the event that is dispatched to it.
class OnboardingFiveBloc extends Bloc<OnboardingFiveEvent, OnboardingFiveState> {OnboardingFiveBloc(OnboardingFiveState initialState) : super(initialState) { on<OnboardingFiveInitialEvent>(_onInitialize); }

_onInitialize(OnboardingFiveInitialEvent event, Emitter<OnboardingFiveState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController())); } 
 }
