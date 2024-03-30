// ignore_for_file: must_be_immutable

part of 'transactions_two_bloc.dart';

/// Represents the state of TransactionsTwo in the application.
class TransactionsTwoState extends Equatable {
  TransactionsTwoState({this.transactionsTwoModelObj});

  TransactionsTwoModel? transactionsTwoModelObj;

  @override
  List<Object?> get props => [
        transactionsTwoModelObj,
      ];

  TransactionsTwoState copyWith(
      {TransactionsTwoModel? transactionsTwoModelObj}) {
    return TransactionsTwoState(
      transactionsTwoModelObj:
          transactionsTwoModelObj ?? this.transactionsTwoModelObj,
    );
  }
}
