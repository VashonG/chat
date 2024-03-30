import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carat_card/presentation/rewards_four_screen/models/rewards_four_model.dart';
part 'rewards_four_event.dart';
part 'rewards_four_state.dart';

/// A bloc that manages the state of a RewardsFour according to the event that is dispatched to it.
class RewardsFourBloc extends Bloc<RewardsFourEvent, RewardsFourState> {
  RewardsFourBloc(RewardsFourState initialState) : super(initialState) {
    on<RewardsFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RewardsFourInitialEvent event,
    Emitter<RewardsFourState> emit,
  ) async {}
}
