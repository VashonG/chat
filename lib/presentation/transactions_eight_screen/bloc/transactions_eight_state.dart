// ignore_for_file: must_be_immutable

part of 'transactions_eight_bloc.dart';

/// Represents the state of TransactionsEight in the application.
class TransactionsEightState extends Equatable {
  TransactionsEightState({this.transactionsEightModelObj});

  TransactionsEightModel? transactionsEightModelObj;

  @override
  List<Object?> get props => [
        transactionsEightModelObj,
      ];

  TransactionsEightState copyWith(
      {TransactionsEightModel? transactionsEightModelObj}) {
    return TransactionsEightState(
      transactionsEightModelObj:
          transactionsEightModelObj ?? this.transactionsEightModelObj,
    );
  }
}
