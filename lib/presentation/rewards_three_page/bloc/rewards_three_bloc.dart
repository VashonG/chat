import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/userprofilerow_item_model.dart';import 'package:carat_card/presentation/rewards_three_page/models/rewards_three_model.dart';part 'rewards_three_event.dart';part 'rewards_three_state.dart';/// A bloc that manages the state of a RewardsThree according to the event that is dispatched to it.
class RewardsThreeBloc extends Bloc<RewardsThreeEvent, RewardsThreeState> {RewardsThreeBloc(RewardsThreeState initialState) : super(initialState) { on<RewardsThreeInitialEvent>(_onInitialize); }

List<UserprofilerowItemModel> fillUserprofilerowItemList() { return List.generate(8, (index) => UserprofilerowItemModel()); } 
_onInitialize(RewardsThreeInitialEvent event, Emitter<RewardsThreeState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(rewardsThreeModelObj: state.rewardsThreeModelObj?.copyWith(userprofilerowItemList: fillUserprofilerowItemList()))); } 
 }
