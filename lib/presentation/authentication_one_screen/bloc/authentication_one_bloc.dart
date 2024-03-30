import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/authentication_one_screen/models/authentication_one_model.dart';part 'authentication_one_event.dart';part 'authentication_one_state.dart';/// A bloc that manages the state of a AuthenticationOne according to the event that is dispatched to it.
class AuthenticationOneBloc extends Bloc<AuthenticationOneEvent, AuthenticationOneState> {AuthenticationOneBloc(AuthenticationOneState initialState) : super(initialState) { on<AuthenticationOneInitialEvent>(_onInitialize); }

_onInitialize(AuthenticationOneInitialEvent event, Emitter<AuthenticationOneState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController())); } 
 }
