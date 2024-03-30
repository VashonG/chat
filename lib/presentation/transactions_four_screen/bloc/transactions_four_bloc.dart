import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/transactions_four_screen/models/transactions_four_model.dart';part 'transactions_four_event.dart';part 'transactions_four_state.dart';/// A bloc that manages the state of a TransactionsFour according to the event that is dispatched to it.
class TransactionsFourBloc extends Bloc<TransactionsFourEvent, TransactionsFourState> {TransactionsFourBloc(TransactionsFourState initialState) : super(initialState) { on<TransactionsFourInitialEvent>(_onInitialize); }

_onInitialize(TransactionsFourInitialEvent event, Emitter<TransactionsFourState> emit, ) async  {  } 
 }
