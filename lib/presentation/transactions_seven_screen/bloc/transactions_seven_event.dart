// ignore_for_file: must_be_immutable

part of 'transactions_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsSevenEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TransactionsSeven widget is first created.
class TransactionsSevenInitialEvent extends TransactionsSevenEvent {
  @override
  List<Object?> get props => [];
}
