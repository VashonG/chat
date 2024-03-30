import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/notifications_one_screen/models/notifications_one_model.dart';part 'notifications_one_event.dart';part 'notifications_one_state.dart';/// A bloc that manages the state of a NotificationsOne according to the event that is dispatched to it.
class NotificationsOneBloc extends Bloc<NotificationsOneEvent, NotificationsOneState> {NotificationsOneBloc(NotificationsOneState initialState) : super(initialState) { on<NotificationsOneInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<NotificationsOneState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(NotificationsOneInitialEvent event, Emitter<NotificationsOneState> emit, ) async  { emit(state.copyWith(totalstocksoneController: TextEditingController(), totalsharesoneController: TextEditingController())); emit(state.copyWith(notificationsOneModelObj: state.notificationsOneModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
