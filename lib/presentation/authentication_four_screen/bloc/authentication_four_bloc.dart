import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/authentication_four_screen/models/authentication_four_model.dart';part 'authentication_four_event.dart';part 'authentication_four_state.dart';/// A bloc that manages the state of a AuthenticationFour according to the event that is dispatched to it.
class AuthenticationFourBloc extends Bloc<AuthenticationFourEvent, AuthenticationFourState> {AuthenticationFourBloc(AuthenticationFourState initialState) : super(initialState) { on<AuthenticationFourInitialEvent>(_onInitialize); }

_onInitialize(AuthenticationFourInitialEvent event, Emitter<AuthenticationFourState> emit, ) async  {  } 
 }
