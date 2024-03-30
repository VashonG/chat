// ignore_for_file: must_be_immutable

part of 'transactions_four_bloc.dart';

/// Represents the state of TransactionsFour in the application.
class TransactionsFourState extends Equatable {
  TransactionsFourState({this.transactionsFourModelObj});

  TransactionsFourModel? transactionsFourModelObj;

  @override
  List<Object?> get props => [
        transactionsFourModelObj,
      ];

  TransactionsFourState copyWith(
      {TransactionsFourModel? transactionsFourModelObj}) {
    return TransactionsFourState(
      transactionsFourModelObj:
          transactionsFourModelObj ?? this.transactionsFourModelObj,
    );
  }
}
