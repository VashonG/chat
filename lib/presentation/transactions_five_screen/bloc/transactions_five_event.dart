// ignore_for_file: must_be_immutable

part of 'transactions_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsFiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TransactionsFive widget is first created.
class TransactionsFiveInitialEvent extends TransactionsFiveEvent {
  @override
  List<Object?> get props => [];
}
