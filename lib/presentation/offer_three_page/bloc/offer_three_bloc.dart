import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/list50off_on_item_model.dart';import '../models/userprofilerow1_item_model.dart';import 'package:carat_card/presentation/offer_three_page/models/offer_three_model.dart';part 'offer_three_event.dart';part 'offer_three_state.dart';/// A bloc that manages the state of a OfferThree according to the event that is dispatched to it.
class OfferThreeBloc extends Bloc<OfferThreeEvent, OfferThreeState> {OfferThreeBloc(OfferThreeState initialState) : super(initialState) { on<OfferThreeInitialEvent>(_onInitialize); }

_onInitialize(OfferThreeInitialEvent event, Emitter<OfferThreeState> emit, ) async  { emit(state.copyWith(offerThreeModelObj: state.offerThreeModelObj?.copyWith(list50offOnItemList: fillList50offOnItemList(), userprofilerow1ItemList: fillUserprofilerow1ItemList()))); } 
List<List50offOnItemModel> fillList50offOnItemList() { return List.generate(4, (index) => List50offOnItemModel()); } 
List<Userprofilerow1ItemModel> fillUserprofilerow1ItemList() { return List.generate(3, (index) => Userprofilerow1ItemModel()); } 
 }
