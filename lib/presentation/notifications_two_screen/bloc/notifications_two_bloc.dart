import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/useroffer_item_model.dart';import 'package:carat_card/presentation/notifications_two_screen/models/notifications_two_model.dart';part 'notifications_two_event.dart';part 'notifications_two_state.dart';/// A bloc that manages the state of a NotificationsTwo according to the event that is dispatched to it.
class NotificationsTwoBloc extends Bloc<NotificationsTwoEvent, NotificationsTwoState> {NotificationsTwoBloc(NotificationsTwoState initialState) : super(initialState) { on<NotificationsTwoInitialEvent>(_onInitialize); }

_onInitialize(NotificationsTwoInitialEvent event, Emitter<NotificationsTwoState> emit, ) async  { emit(state.copyWith(notificationsTwoModelObj: state.notificationsTwoModelObj?.copyWith(userofferItemList: fillUserofferItemList()))); } 
List<UserofferItemModel> fillUserofferItemList() { return List.generate(4, (index) => UserofferItemModel()); } 
 }
