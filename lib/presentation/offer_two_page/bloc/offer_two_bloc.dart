import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/userprofile1_item_model.dart';import 'package:carat_card/presentation/offer_two_page/models/offer_two_model.dart';part 'offer_two_event.dart';part 'offer_two_state.dart';/// A bloc that manages the state of a OfferTwo according to the event that is dispatched to it.
class OfferTwoBloc extends Bloc<OfferTwoEvent, OfferTwoState> {OfferTwoBloc(OfferTwoState initialState) : super(initialState) { on<OfferTwoInitialEvent>(_onInitialize); }

_onInitialize(OfferTwoInitialEvent event, Emitter<OfferTwoState> emit, ) async  { emit(state.copyWith(offerTwoModelObj: state.offerTwoModelObj?.copyWith(userprofile1ItemList: fillUserprofile1ItemList()))); } 
List<Userprofile1ItemModel> fillUserprofile1ItemList() { return List.generate(2, (index) => Userprofile1ItemModel()); } 
 }
