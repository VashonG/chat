// ignore_for_file: must_be_immutable

part of 'transactions_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TransactionsFour widget is first created.
class TransactionsFourInitialEvent extends TransactionsFourEvent {
  @override
  List<Object?> get props => [];
}
