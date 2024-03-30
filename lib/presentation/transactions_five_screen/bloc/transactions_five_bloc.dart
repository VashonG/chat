import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/transactions_five_screen/models/transactions_five_model.dart';part 'transactions_five_event.dart';part 'transactions_five_state.dart';/// A bloc that manages the state of a TransactionsFive according to the event that is dispatched to it.
class TransactionsFiveBloc extends Bloc<TransactionsFiveEvent, TransactionsFiveState> {TransactionsFiveBloc(TransactionsFiveState initialState) : super(initialState) { on<TransactionsFiveInitialEvent>(_onInitialize); }

_onInitialize(TransactionsFiveInitialEvent event, Emitter<TransactionsFiveState> emit, ) async  { emit(state.copyWith(amountController: TextEditingController())); } 
 }
