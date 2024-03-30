import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carat_card/presentation/frame_360_screen/models/frame_360_model.dart';
part 'frame_360_event.dart';
part 'frame_360_state.dart';

/// A bloc that manages the state of a Frame360 according to the event that is dispatched to it.
class Frame360Bloc extends Bloc<Frame360Event, Frame360State> {
  Frame360Bloc(Frame360State initialState) : super(initialState) {
    on<Frame360InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame360InitialEvent event,
    Emitter<Frame360State> emit,
  ) async {}
}
