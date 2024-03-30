import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/transactions_six_screen/models/transactions_six_model.dart';part 'transactions_six_event.dart';part 'transactions_six_state.dart';/// A bloc that manages the state of a TransactionsSix according to the event that is dispatched to it.
class TransactionsSixBloc extends Bloc<TransactionsSixEvent, TransactionsSixState> {TransactionsSixBloc(TransactionsSixState initialState) : super(initialState) { on<TransactionsSixInitialEvent>(_onInitialize); }

_onInitialize(TransactionsSixInitialEvent event, Emitter<TransactionsSixState> emit, ) async  {  } 
 }
