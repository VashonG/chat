import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:carat_card/presentation/transactions_two_screen/models/transactions_two_model.dart';
part 'transactions_two_event.dart';
part 'transactions_two_state.dart';

/// A bloc that manages the state of a TransactionsTwo according to the event that is dispatched to it.
class TransactionsTwoBloc
    extends Bloc<TransactionsTwoEvent, TransactionsTwoState> {
  TransactionsTwoBloc(TransactionsTwoState initialState) : super(initialState) {
    on<TransactionsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TransactionsTwoInitialEvent event,
    Emitter<TransactionsTwoState> emit,
  ) async {}
}
