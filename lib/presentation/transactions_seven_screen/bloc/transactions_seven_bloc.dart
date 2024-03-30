import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/usersubscriptio2_item_model.dart';import 'package:carat_card/presentation/transactions_seven_screen/models/transactions_seven_model.dart';part 'transactions_seven_event.dart';part 'transactions_seven_state.dart';/// A bloc that manages the state of a TransactionsSeven according to the event that is dispatched to it.
class TransactionsSevenBloc extends Bloc<TransactionsSevenEvent, TransactionsSevenState> {TransactionsSevenBloc(TransactionsSevenState initialState) : super(initialState) { on<TransactionsSevenInitialEvent>(_onInitialize); }

_onInitialize(TransactionsSevenInitialEvent event, Emitter<TransactionsSevenState> emit, ) async  { emit(state.copyWith(transactionsSevenModelObj: state.transactionsSevenModelObj?.copyWith(usersubscriptio2ItemList: fillUsersubscriptio2ItemList()))); } 
List<Usersubscriptio2ItemModel> fillUsersubscriptio2ItemList() { return List.generate(10, (index) => Usersubscriptio2ItemModel()); } 
 }
