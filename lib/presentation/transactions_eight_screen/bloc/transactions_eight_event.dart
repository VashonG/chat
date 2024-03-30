// ignore_for_file: must_be_immutable

part of 'transactions_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsEightEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TransactionsEight widget is first created.
class TransactionsEightInitialEvent extends TransactionsEightEvent {
  @override
  List<Object?> get props => [];
}
