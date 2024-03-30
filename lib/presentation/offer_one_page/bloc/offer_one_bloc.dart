import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/featuredoffer_item_model.dart';import '../models/userprofile_item_model.dart';import 'package:carat_card/presentation/offer_one_page/models/offer_one_model.dart';part 'offer_one_event.dart';part 'offer_one_state.dart';/// A bloc that manages the state of a OfferOne according to the event that is dispatched to it.
class OfferOneBloc extends Bloc<OfferOneEvent, OfferOneState> {OfferOneBloc(OfferOneState initialState) : super(initialState) { on<OfferOneInitialEvent>(_onInitialize); }

List<FeaturedofferItemModel> fillFeaturedofferItemList() { return List.generate(5, (index) => FeaturedofferItemModel()); } 
List<UserprofileItemModel> fillUserprofileItemList() { return List.generate(3, (index) => UserprofileItemModel()); } 
_onInitialize(OfferOneInitialEvent event, Emitter<OfferOneState> emit, ) async  { emit(state.copyWith(priceController: TextEditingController(), priceController1: TextEditingController())); emit(state.copyWith(offerOneModelObj: state.offerOneModelObj?.copyWith(featuredofferItemList: fillFeaturedofferItemList(), userprofileItemList: fillUserprofileItemList()))); } 
 }
