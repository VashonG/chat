// ignore_for_file: must_be_immutable

part of 'transactions_five_bloc.dart';

/// Represents the state of TransactionsFive in the application.
class TransactionsFiveState extends Equatable {
  TransactionsFiveState({
    this.amountController,
    this.transactionsFiveModelObj,
  });

  TextEditingController? amountController;

  TransactionsFiveModel? transactionsFiveModelObj;

  @override
  List<Object?> get props => [
        amountController,
        transactionsFiveModelObj,
      ];

  TransactionsFiveState copyWith({
    TextEditingController? amountController,
    TransactionsFiveModel? transactionsFiveModelObj,
  }) {
    return TransactionsFiveState(
      amountController: amountController ?? this.amountController,
      transactionsFiveModelObj:
          transactionsFiveModelObj ?? this.transactionsFiveModelObj,
    );
  }
}
