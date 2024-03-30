import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/porfile_one_screen/models/porfile_one_model.dart';part 'porfile_one_event.dart';part 'porfile_one_state.dart';/// A bloc that manages the state of a PorfileOne according to the event that is dispatched to it.
class PorfileOneBloc extends Bloc<PorfileOneEvent, PorfileOneState> {PorfileOneBloc(PorfileOneState initialState) : super(initialState) { on<PorfileOneInitialEvent>(_onInitialize); }

_onInitialize(PorfileOneInitialEvent event, Emitter<PorfileOneState> emit, ) async  { emit(state.copyWith(helpvalueoneController: TextEditingController())); } 
 }
