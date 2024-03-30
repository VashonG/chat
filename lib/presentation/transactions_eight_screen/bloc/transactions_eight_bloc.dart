import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/usersubscriptio3_item_model.dart';import 'package:carat_card/presentation/transactions_eight_screen/models/transactions_eight_model.dart';part 'transactions_eight_event.dart';part 'transactions_eight_state.dart';/// A bloc that manages the state of a TransactionsEight according to the event that is dispatched to it.
class TransactionsEightBloc extends Bloc<TransactionsEightEvent, TransactionsEightState> {TransactionsEightBloc(TransactionsEightState initialState) : super(initialState) { on<TransactionsEightInitialEvent>(_onInitialize); }

_onInitialize(TransactionsEightInitialEvent event, Emitter<TransactionsEightState> emit, ) async  { emit(state.copyWith(transactionsEightModelObj: state.transactionsEightModelObj?.copyWith(usersubscriptio3ItemList: fillUsersubscriptio3ItemList()))); } 
List<Usersubscriptio3ItemModel> fillUsersubscriptio3ItemList() { return List.generate(10, (index) => Usersubscriptio3ItemModel()); } 
 }
