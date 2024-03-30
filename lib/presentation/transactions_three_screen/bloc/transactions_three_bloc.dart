import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/transactions_three_screen/models/transactions_three_model.dart';part 'transactions_three_event.dart';part 'transactions_three_state.dart';/// A bloc that manages the state of a TransactionsThree according to the event that is dispatched to it.
class TransactionsThreeBloc extends Bloc<TransactionsThreeEvent, TransactionsThreeState> {TransactionsThreeBloc(TransactionsThreeState initialState) : super(initialState) { on<TransactionsThreeInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); on<ChangeDropDown1Event>(_changeDropDown1); }

_onInitialize(TransactionsThreeInitialEvent event, Emitter<TransactionsThreeState> emit, ) async  { emit(state.copyWith(transactionsThreeModelObj: state.transactionsThreeModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), dropdownItemList1: fillDropdownItemList1()))); } 
_changeDropDown(ChangeDropDownEvent event, Emitter<TransactionsThreeState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
_changeDropDown1(ChangeDropDown1Event event, Emitter<TransactionsThreeState> emit, ) { emit(state.copyWith(selectedDropDownValue1: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<SelectionPopupModel> fillDropdownItemList1() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
 }
