import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carat_card/presentation/authentication_five_screen/models/authentication_five_model.dart';
part 'authentication_five_event.dart';
part 'authentication_five_state.dart';

/// A bloc that manages the state of a AuthenticationFive according to the event that is dispatched to it.
class AuthenticationFiveBloc
    extends Bloc<AuthenticationFiveEvent, AuthenticationFiveState> {
  AuthenticationFiveBloc(AuthenticationFiveState initialState)
      : super(initialState) {
    on<AuthenticationFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AuthenticationFiveInitialEvent event,
    Emitter<AuthenticationFiveState> emit,
  ) async {}
}
