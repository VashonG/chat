import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/help_center_three_screen/models/help_center_three_model.dart';part 'help_center_three_event.dart';part 'help_center_three_state.dart';/// A bloc that manages the state of a HelpCenterThree according to the event that is dispatched to it.
class HelpCenterThreeBloc extends Bloc<HelpCenterThreeEvent, HelpCenterThreeState> {HelpCenterThreeBloc(HelpCenterThreeState initialState) : super(initialState) { on<HelpCenterThreeInitialEvent>(_onInitialize); }

_onInitialize(HelpCenterThreeInitialEvent event, Emitter<HelpCenterThreeState> emit, ) async  {  } 
 }
