import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carat_card/presentation/rewards_two_screen/models/rewards_two_model.dart';
part 'rewards_two_event.dart';
part 'rewards_two_state.dart';

/// A bloc that manages the state of a RewardsTwo according to the event that is dispatched to it.
class RewardsTwoBloc extends Bloc<RewardsTwoEvent, RewardsTwoState> {
  RewardsTwoBloc(RewardsTwoState initialState) : super(initialState) {
    on<RewardsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RewardsTwoInitialEvent event,
    Emitter<RewardsTwoState> emit,
  ) async {}
}
