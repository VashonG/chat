import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/rowinput_item_model.dart';import 'package:carat_card/presentation/authentication_three_screen/models/authentication_three_model.dart';part 'authentication_three_event.dart';part 'authentication_three_state.dart';/// A bloc that manages the state of a AuthenticationThree according to the event that is dispatched to it.
class AuthenticationThreeBloc extends Bloc<AuthenticationThreeEvent, AuthenticationThreeState> {AuthenticationThreeBloc(AuthenticationThreeState initialState) : super(initialState) { on<AuthenticationThreeInitialEvent>(_onInitialize); }

List<RowinputItemModel> fillRowinputItemList() { return List.generate(4, (index) => RowinputItemModel()); } 
_onInitialize(AuthenticationThreeInitialEvent event, Emitter<AuthenticationThreeState> emit, ) async  { emit(state.copyWith(sliderIndex: 0)); emit(state.copyWith(authenticationThreeModelObj: state.authenticationThreeModelObj?.copyWith(rowinputItemList: fillRowinputItemList()))); } 
 }
