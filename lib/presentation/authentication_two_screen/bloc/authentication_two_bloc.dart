import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/authentication_two_screen/models/authentication_two_model.dart';part 'authentication_two_event.dart';part 'authentication_two_state.dart';/// A bloc that manages the state of a AuthenticationTwo according to the event that is dispatched to it.
class AuthenticationTwoBloc extends Bloc<AuthenticationTwoEvent, AuthenticationTwoState> {AuthenticationTwoBloc(AuthenticationTwoState initialState) : super(initialState) { on<AuthenticationTwoInitialEvent>(_onInitialize); }

_onInitialize(AuthenticationTwoInitialEvent event, Emitter<AuthenticationTwoState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController(), passwordController: TextEditingController())); } 
 }
