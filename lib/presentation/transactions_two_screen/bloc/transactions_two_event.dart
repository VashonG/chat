// ignore_for_file: must_be_immutable

part of 'transactions_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TransactionsTwo widget is first created.
class TransactionsTwoInitialEvent extends TransactionsTwoEvent {
  @override
  List<Object?> get props => [];
}
