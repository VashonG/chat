import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/help_center_one_screen/models/help_center_one_model.dart';part 'help_center_one_event.dart';part 'help_center_one_state.dart';/// A bloc that manages the state of a HelpCenterOne according to the event that is dispatched to it.
class HelpCenterOneBloc extends Bloc<HelpCenterOneEvent, HelpCenterOneState> {HelpCenterOneBloc(HelpCenterOneState initialState) : super(initialState) { on<HelpCenterOneInitialEvent>(_onInitialize); }

_onInitialize(HelpCenterOneInitialEvent event, Emitter<HelpCenterOneState> emit, ) async  {  } 
 }
