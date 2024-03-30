// ignore_for_file: must_be_immutable

part of 'transactions_six_bloc.dart';

/// Represents the state of TransactionsSix in the application.
class TransactionsSixState extends Equatable {
  TransactionsSixState({this.transactionsSixModelObj});

  TransactionsSixModel? transactionsSixModelObj;

  @override
  List<Object?> get props => [
        transactionsSixModelObj,
      ];

  TransactionsSixState copyWith(
      {TransactionsSixModel? transactionsSixModelObj}) {
    return TransactionsSixState(
      transactionsSixModelObj:
          transactionsSixModelObj ?? this.transactionsSixModelObj,
    );
  }
}
