// ignore_for_file: must_be_immutable

part of 'transactions_seven_bloc.dart';

/// Represents the state of TransactionsSeven in the application.
class TransactionsSevenState extends Equatable {
  TransactionsSevenState({this.transactionsSevenModelObj});

  TransactionsSevenModel? transactionsSevenModelObj;

  @override
  List<Object?> get props => [
        transactionsSevenModelObj,
      ];

  TransactionsSevenState copyWith(
      {TransactionsSevenModel? transactionsSevenModelObj}) {
    return TransactionsSevenState(
      transactionsSevenModelObj:
          transactionsSevenModelObj ?? this.transactionsSevenModelObj,
    );
  }
}
