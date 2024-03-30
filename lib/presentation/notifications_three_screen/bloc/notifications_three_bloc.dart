import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/notifications_three_screen/models/notifications_three_model.dart';part 'notifications_three_event.dart';part 'notifications_three_state.dart';/// A bloc that manages the state of a NotificationsThree according to the event that is dispatched to it.
class NotificationsThreeBloc extends Bloc<NotificationsThreeEvent, NotificationsThreeState> {NotificationsThreeBloc(NotificationsThreeState initialState) : super(initialState) { on<NotificationsThreeInitialEvent>(_onInitialize); }

_onInitialize(NotificationsThreeInitialEvent event, Emitter<NotificationsThreeState> emit, ) async  {  } 
 }
