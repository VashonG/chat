import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/help_center_two_screen/models/help_center_two_model.dart';part 'help_center_two_event.dart';part 'help_center_two_state.dart';/// A bloc that manages the state of a HelpCenterTwo according to the event that is dispatched to it.
class HelpCenterTwoBloc extends Bloc<HelpCenterTwoEvent, HelpCenterTwoState> {HelpCenterTwoBloc(HelpCenterTwoState initialState) : super(initialState) { on<HelpCenterTwoInitialEvent>(_onInitialize); }

_onInitialize(HelpCenterTwoInitialEvent event, Emitter<HelpCenterTwoState> emit, ) async  {  } 
 }
