import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/offer_one_tab_container_screen/models/offer_one_tab_container_model.dart';part 'offer_one_tab_container_event.dart';part 'offer_one_tab_container_state.dart';/// A bloc that manages the state of a OfferOneTabContainer according to the event that is dispatched to it.
class OfferOneTabContainerBloc extends Bloc<OfferOneTabContainerEvent, OfferOneTabContainerState> {OfferOneTabContainerBloc(OfferOneTabContainerState initialState) : super(initialState) { on<OfferOneTabContainerInitialEvent>(_onInitialize); }

_onInitialize(OfferOneTabContainerInitialEvent event, Emitter<OfferOneTabContainerState> emit, ) async  {  } 
 }
