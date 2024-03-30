// ignore_for_file: must_be_immutable

part of 'transactions_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TransactionsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TransactionsOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TransactionsOne widget is first created.
class TransactionsOneInitialEvent extends TransactionsOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends TransactionsOneEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
