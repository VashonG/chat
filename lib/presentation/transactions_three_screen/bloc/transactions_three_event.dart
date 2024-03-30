// ignore_for_file: must_be_immutable

part of 'transactions_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TransactionsThree widget is first created.
class TransactionsThreeInitialEvent extends TransactionsThreeEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends TransactionsThreeEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends TransactionsThreeEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
