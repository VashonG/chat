// ignore_for_file: must_be_immutable

part of 'transactions_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsSixEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TransactionsSix widget is first created.
class TransactionsSixInitialEvent extends TransactionsSixEvent {
  @override
  List<Object?> get props => [];
}
